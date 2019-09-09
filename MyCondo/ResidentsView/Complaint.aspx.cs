using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo.ResidentsView
{
    public partial class Complaint : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnRequestService_Click(object sender, EventArgs e)
        {
            Complaints complaint = new Complaints();

            complaint.ReporterName = txtReporterName.Text;
            complaint.Title = txtTitle.Text;
            complaint.Message = txtMessage.Text;
            complaint.Date = Convert.ToDateTime(txtDate.Text);

            try
            {
                SqlCommand command = new SqlCommand();
                command.CommandText = "InsertComplaint";
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("ReporterName", SqlDbType.NVarChar);
                command.Parameters["ReporterName"].Value = complaint.ReporterName;

                command.Parameters.Add("Title", SqlDbType.NVarChar);
                command.Parameters["Title"].Value = complaint.Title;

                command.Parameters.Add("ComplaintMessage", SqlDbType.NVarChar);
                command.Parameters["ComplaintMessage"].Value = complaint.Message;

                command.Parameters.Add("Date", SqlDbType.DateTime);
                command.Parameters["Date"].Value = complaint.Date;

                DataConnection myConnection = new DataConnection();
                myConnection.ExecuteNonQuery(command);
                Response.Redirect("Home.aspx");

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}