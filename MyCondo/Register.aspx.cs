using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            if (!checkEmail())
            {
                if (!checkUsername())
                {
                    User myUser = new User();
                    Login myLogin = new Login();
                    Adress myAdress = new Adress(txtLine1.Text, txtLine2.Text, txtCity.Text, txtprovince.Text, txtZip.Text, txtCountry.Text);

                    myUser.Fname = txtFName.Text;
                    myUser.Lname = txtLName.Text;
                    myUser.Adress = myAdress.ToString();
                    myUser.PNumber = txtPNumber.Text;
                    myUser.Email = txtEmail.Text;
                    myUser.Group = "Residents";

                    myLogin.Username = txtUsername.Text;
                    myLogin.Password = txtPwd.Text;
                    myLogin.AccountType = "NC";
                    try
                    {
                        SqlCommand command = new SqlCommand();
                        command.CommandText = "InsertUser";
                        command.CommandType = CommandType.StoredProcedure;

                        command.Parameters.Add("FirstName", SqlDbType.NVarChar);
                        command.Parameters["FirstName"].Value = myUser.Fname;
                        command.Parameters.Add("LastName", SqlDbType.NVarChar);
                        command.Parameters["LastName"].Value = myUser.Lname;
                        command.Parameters.Add("Email", SqlDbType.NVarChar);
                        command.Parameters["Email"].Value = myUser.Email;
                        command.Parameters.Add("PhoneNumber", SqlDbType.NVarChar);
                        command.Parameters["PhoneNumber"].Value = myUser.PNumber;
                        command.Parameters.Add("UserGroup", SqlDbType.NVarChar);
                        command.Parameters["UserGroup"].Value = myUser.Group;
                        command.Parameters.Add("Address", SqlDbType.NVarChar);
                        command.Parameters["Address"].Value = myUser.Adress;

                        DataConnection myConnection = new DataConnection();
                        myConnection.ExecuteNonQuery(command);

                        DataConnection myConnection1 = new DataConnection();
                        String script = "SELECT UserId FROM Users WHERE Email='" + myUser.Email + "'";
                        DataTable myTable = myConnection1.ExecuteScript(script);
                        myLogin.UserId = Convert.ToInt32(myTable.Rows[0][0].ToString());
                        myConnection1.conn.Close();

                        SqlCommand command1 = new SqlCommand();
                        command1.CommandText = "InsertLogin";
                        command1.CommandType = CommandType.StoredProcedure;

                        command1.Parameters.Add("Username", SqlDbType.NVarChar);
                        command1.Parameters["Username"].Value = myLogin.Username;
                        command1.Parameters.Add("Password", SqlDbType.NVarChar);
                        command1.Parameters["Password"].Value = myLogin.Password;
                        command1.Parameters.Add("AccountType", SqlDbType.NVarChar);
                        command1.Parameters["AccountType"].Value = myLogin.AccountType;
                        command1.Parameters.Add("UserId", SqlDbType.NVarChar);
                        command1.Parameters["UserId"].Value = myLogin.UserId;

                        DataConnection myConnection2 = new DataConnection();
                        myConnection2.ExecuteNonQuery(command1);

                        Response.Redirect("Home.aspx");
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }else
                {
                    CustomValidator1.IsValid = false;
                    CustomValidator1.ErrorMessage = "Username already taken";
                }
            } else
            {
                CustomValidator1.IsValid = false;
                CustomValidator1.ErrorMessage = "Email already Used";
            }
        }

        private bool checkEmail()
        {
            bool found=false;
            DataConnection myConnection = new DataConnection();
            String script = "Select Email from Users where Email like '%" + txtEmail.Text + "%'";
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                found = true;
                return found;
            }
            else return found;
        }

        private bool checkUsername()
        {
            bool found = false;
            DataConnection myConnection = new DataConnection();
            String script = "Select Username from Login where Username like '%"+txtUsername.Text+"%'";

            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                found = true;
                return found;
            }
            else return found;
        }
    }
}