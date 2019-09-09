using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class Bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreatebooking_Click(object sender, EventArgs e)
        {
            Booking myBooking = new Booking();

            myBooking.BookingType = BookingTypeDropDown.SelectedValue;
            myBooking.StartDate = Convert.ToDateTime(txtStartDate.Text);
            myBooking.EndDate = Convert.ToDateTime(txtEndDate.Text);
            myBooking.Description = txtDescription.Text;
            myBooking.UserId = Convert.ToInt32(ResidentDropDown.SelectedValue);

            if (!CheckDate(myBooking.StartDate, myBooking.BookingType))
            {
                try
                {
                    SqlCommand command = new SqlCommand();
                    command.CommandText = "InsertBooking";
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add("BookingType", SqlDbType.NVarChar);
                    command.Parameters["BookingType"].Value = myBooking.BookingType;
                    command.Parameters.Add("StartDate", SqlDbType.DateTime);
                    command.Parameters["StartDate"].Value = myBooking.StartDate;
                    command.Parameters.Add("EndDate", SqlDbType.DateTime);
                    command.Parameters["EndDate"].Value = myBooking.EndDate;
                    command.Parameters.Add("BookingDescription", SqlDbType.NVarChar);
                    command.Parameters["BookingDescription"].Value = myBooking.Description;
                    command.Parameters.Add("UserId", SqlDbType.Int);
                    command.Parameters["UserId"].Value = myBooking.UserId;

                    DataConnection myConnection = new DataConnection();
                    myConnection.ExecuteNonQuery(command);
                    Response.Redirect("Home.aspx");
                    lblDatealreadyBooked.Visible = false;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                    {
                    }
                }
            }
            else
            {
                lblDatealreadyBooked.Visible = true;
            }
        }

        private bool CheckDate(DateTime startDate, string bookingType)
        {
            bool found = false;
            DataConnection myConnection = new DataConnection();
            String script = "Select BookingType, StartDate, EndDate from Booking";
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                for (int i = 0; i < myTable.Rows.Count; i++)
                {
                    if (bookingType == myTable.Rows[i][0].ToString())
                    {
                        if(startDate >= Convert.ToDateTime(myTable.Rows[i][1].ToString()))
                        {
                            if(startDate <= Convert.ToDateTime(myTable.Rows[i][2].ToString()))
                            {
                                found = true;
                                break;
                            }
                        }
                    }
                }
            }
            return found;
        }
    }
}