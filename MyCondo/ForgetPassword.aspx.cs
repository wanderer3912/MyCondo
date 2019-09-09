using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendPassword_Click(object sender, EventArgs e)
        {
            User ThisUser = CheckEmail(txtEmail.Text);
            if (ThisUser.Fname!= null && txtEmail.Text != "")
            {
                SendEmail(ThisUser);
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

        private void SendEmail(User ThisUser)
        {
            DataConnection myConnection = new DataConnection();
            String script = "Select * from Login where UserId=" + ThisUser.UserId;
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();

            Login Myinfo = new Login();
            Myinfo.AccountType = myTable.Rows[0][2].ToString();
            Myinfo.Image = myTable.Rows[0][4].ToString();
            Myinfo.Password = myTable.Rows[0][1].ToString();
            Myinfo.UserId = int.Parse(myTable.Rows[0][3].ToString());
            Myinfo.Username = myTable.Rows[0][0].ToString();

            SmtpClient smtpClient = new SmtpClient();
            MailMessage message = new MailMessage();
            try
            {
                MailAddress fromAddress = new MailAddress("mycondowebapp@gmail.com", "MyCondo");
                MailAddress toAddress = new MailAddress(ThisUser.Email, ThisUser.Fname);
                message.From = fromAddress;
                message.To.Add(toAddress);
                message.Subject = "Login Information for MyCondo";
                message.IsBodyHtml = true;
                message.Priority = MailPriority.High;
                message.Body = "<p>Hello "+ThisUser.Fname+
                    ",<br><br>It Seems like you may have forgot your login credentials;" +
                    "<br>Here are the details of your login: " +
                    "<br><br>Your username is : <b>" + Myinfo.Username + "</b><br>Your password is : <b>" + Myinfo.Password+
                    "</b><br><br>If you didnt request this information, please login now and change your password." +
                    "<br><br>Thank you and for your cooperation," +
                    "<br>MyCondo Team</p>";
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.EnableSsl = true;
                smtpClient.Port = 587;

                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.UseDefaultCredentials = false;

                smtpClient.Credentials = new System.Net.NetworkCredential("mycondowebapp@gmail.com", "Qwerty@123");
                smtpClient.Send(message);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private User CheckEmail(String email)
        {
            User aUser = new User();
            DataConnection myConnection = new DataConnection();
            String script = "Select * from Users";
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                for (int i = 0; i < myTable.Rows.Count; i++)
                {
                    if (myTable.Rows[i][3].ToString() == txtEmail.Text)
                    {
                        aUser.UserId = int.Parse(myTable.Rows[0][0].ToString());
                        aUser.Fname = myTable.Rows[0][1].ToString();
                        aUser.Lname = myTable.Rows[0][2].ToString();
                        aUser.Email = myTable.Rows[0][3].ToString();
                        aUser.CreationDate = myTable.Rows[0][7].ToString();
                        aUser.Group = myTable.Rows[0][8].ToString();
                        break;
                    }
                }
                return aUser;
            }
            else
                return null;
        }
    }
}