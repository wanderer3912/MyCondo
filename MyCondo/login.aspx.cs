using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class login : System.Web.UI.Page
    {
        static int myTime;
        static int Code;
        static int tryCodeNum = 0;
        static int tryReceiveCode = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        private void Logout()
        {
            tryCodeNum = 0;
            tryReceiveCode = 0;
            Session.Abandon();
            Session.Clear();
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            try
            {
                Session.Abandon();
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Buffer = true;
                Response.ExpiresAbsolute = DateTime.Now.AddDays(-1d);
                Response.Expires = -1000;
                Response.CacheControl = "no-cache";
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool found = false;
            DataConnection myConnection = new DataConnection();
            String script = "Select * from Login";
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                for (int i = 0; i < myTable.Rows.Count; i++)
                {
                    if (myTable.Rows[i][0].ToString() == txtUsername.Text && myTable.Rows[i][1].ToString() == txtPassword.Text)
                    {
                        found = true;
                        Login Myinfo = new Login();
                        Myinfo.AccountType = myTable.Rows[i][2].ToString();
                        Myinfo.Image = myTable.Rows[i][4].ToString();
                        Myinfo.Password = myTable.Rows[i][1].ToString();
                        Myinfo.UserId = int.Parse(myTable.Rows[i][3].ToString());
                        Myinfo.Username = myTable.Rows[i][0].ToString();
                        Session["Login"] = Myinfo;

                        //Getting User Details
                        DataConnection myConnection1 = new DataConnection();
                        String script1 = "Select * from Users where UserId=" + int.Parse(myTable.Rows[i][3].ToString());
                        DataTable myTable1 = myConnection1.ExecuteScript(script1);
                        myConnection1.conn.Close();
                        User aUser = new User();
                        aUser.UserId = int.Parse(myTable1.Rows[0][0].ToString());
                        aUser.Fname = myTable1.Rows[0][1].ToString();
                        aUser.Lname = myTable1.Rows[0][2].ToString();
                        aUser.Email = myTable1.Rows[0][3].ToString();
                        aUser.CreationDate = myTable1.Rows[0][7].ToString();
                        aUser.Group = myTable1.Rows[0][8].ToString();
                        Session["User"] = aUser;
                        break;
                    }
                }
                if (found)
                {
                    lblForgotPwd.Visible = false;
                    lblPwd.Visible = false;
                    lblUsername.Visible = false;
                    lblValidation.Visible = false;
                    lblRegister.Visible = false;
                    txtPassword.Visible = false;
                    txtUsername.Visible = false;
                    btnSubmit.Visible = false;

                    lblTime.Visible = true;
                    lblverificationMessage.Visible = true;
                    txtVerificationtext.Visible = true;
                    btnConfirm.Visible = true;

                    myTime = 120;
                    codeTimingTime.Enabled = true;
                    Code = generateNewCode();
                    User Myinfo = new User();
                    Myinfo = (User)(Session["User"]);
                    SendEmail(Myinfo);
                }
                else
                {
                    lblValidation.Text = "Incorrect Login Or Password, please try again";
                }
            }
            else
            {
                lblValidation.Text = "Incorrect Login Or Password, please try again";
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (myTime >= 0)
            {
                lblTime.Text = new DateTime().AddSeconds(myTime).ToString("mm:ss");
                myTime--;
            }
            else
            {
                Code = generateNewCode();
                btnConfirm.Visible = false;
                btnSendCode.Visible = true;
                lblValidation.Text = "Time expired, please request a new code";
                lblValidation.Visible = true;
                codeTimingTime.Enabled = false;
            }
        }

        private int generateNewCode()
        {
            Random random = new Random();
            return random.Next(100000, 999999);
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (myTime > 0)
            {
                if (txtVerificationtext.Text == Convert.ToString(Code))
                {
                    codeTimingTime.Enabled = false;
                    tryCodeNum = 0;
                    Login Myinfo = new Login();
                    Myinfo = (Login)(Session["Login"]);
                    if (Myinfo.AccountType == "ADM  ")
                    {
                        Response.Redirect("Home.aspx");
                    }
                    else
                    if (Myinfo.AccountType == "NC   ")
                    {
                        Response.Redirect("NC/Home.aspx");
                    }
                    else
                    if (Myinfo.AccountType == "RES  ")
                    {
                        Response.Redirect("ResidentsView/Home.aspx");
                    }
                    else
                    if (Myinfo.AccountType == "SEC  ")
                    {
                        Response.Redirect("#");
                    }
                    else
                    if (Myinfo.AccountType == "SUP  ")
                    {
                        Response.Redirect("#");
                    }
                }
                else
                {
                    if (tryReceiveCode < 5)
                    {
                        tryReceiveCode++;
                        lblValidation.Text = "Wrong Code, Please Try again";
                        lblValidation.Visible = true;
                    }
                    else
                    {
                        Logout();
                        Response.Redirect("Home.aspx");
                    }
                }
            }
        }

        protected void btnSendCode_Click(object sender, EventArgs e)
        {
            if (tryCodeNum < 5)
            {
                User Myinfo = new User();
                Myinfo = (User)(Session["User"]);
                myTime = 120;
                btnConfirm.Visible = true;
                btnSendCode.Visible = false;
                lblValidation.Text = "";
                lblValidation.Visible = false;
                codeTimingTime.Enabled = true;
                tryCodeNum++;
                SendEmail(Myinfo);
            }
            else
            {
                Logout();
                Response.Redirect("Home.aspx");
            }
        }

        private void SendEmail(User ThisUser)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage message = new MailMessage();
            try
            {
                MailAddress fromAddress = new MailAddress("mycondowebapp@gmail.com", "MyCondo");
                MailAddress toAddress = new MailAddress(ThisUser.Email, ThisUser.Fname);
                message.From = fromAddress;
                message.To.Add(toAddress);
                message.Subject = "Verification Code";
                message.IsBodyHtml = true;
                message.Priority = MailPriority.High;
                message.Body = "<p>Hello " + ThisUser.Fname +
                    ",<br><br>Enter this code to verify your login;" +
                    "<br><br>Your Code is : <h3><b>" + Code +
                    "</h3></b><br><br>If you didnt request this information, please login now and change your password or contact the Admin Team" +
                    "<br><br>Thank you and for your cooperation," +
                    "<br>MyCondo Team</p>";
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.EnableSsl = true;
                smtpClient.Port = 587;

                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;

                smtpClient.Credentials = new System.Net.NetworkCredential("mycondowebapp@gmail.com", "Chocob0y");
                smtpClient.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}