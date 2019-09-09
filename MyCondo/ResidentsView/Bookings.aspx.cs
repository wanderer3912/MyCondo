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
    public partial class Bookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreatebooking_Click(object sender, EventArgs e)
        {
            User Myinfo = new User();
            Myinfo = (User)(Session["User"]);

            Booking myBooking = new Booking();

            myBooking.BookingType = BookingTypeDropDown.SelectedValue;
            myBooking.StartDate = Convert.ToDateTime(txtStartDate.Text);
            myBooking.EndDate = Convert.ToDateTime(txtEndDate.Text);
            myBooking.Description = txtDescription.Text;
            myBooking.UserId = Myinfo.UserId;
            TimeSpan duration = myBooking.EndDate - myBooking.StartDate;

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
                    SavePayment(myBooking.BookingType, myBooking.UserId,duration);
                    lblDatealreadyBooked.Visible = false;
                    Response.Redirect("Home.aspx");
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

        private void SavePayment(string bookingType, int userId, TimeSpan duration)
        {
            Payment myPayment = new Payment();
            myPayment.UserId = userId;

            switch (bookingType)
            {
                case "Low Rise Elevator":
                case "High Rise Elevator":
                    myPayment.Amount = 150;
                    myPayment.ServiceName = "Elevator Booking";
                    break;
                case "Party Room":
                    myPayment.Amount = 350;
                    myPayment.ServiceName = "Party Room Booking";
                    break;
                case "Guest Suite":
                    myPayment.ServiceName = "Guest Suite Booking";
                    int dailyPrice = 120;
                    if(duration.Days>1)
                    {
                        myPayment.Amount = dailyPrice * duration.Days;
                    }
                    else
                    {
                        myPayment.Amount = dailyPrice;
                    }
                    break;
            }

            try
            {
                SqlCommand command = new SqlCommand();
                command.CommandText = "InsertPayment";
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("Amount", SqlDbType.Decimal);
                command.Parameters["Amount"].Value = myPayment.Amount;
                command.Parameters.Add("PayerId", SqlDbType.Int);
                command.Parameters["PayerId"].Value = myPayment.UserId;
                command.Parameters.Add("ServiceName", SqlDbType.NVarChar);
                command.Parameters["ServiceName"].Value = myPayment.ServiceName;

                DataConnection myConnection = new DataConnection();
                myConnection.ExecuteNonQuery(command);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
                {
                }
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
                        if (startDate >= Convert.ToDateTime(myTable.Rows[i][1].ToString()))
                        {
                            if (startDate <= Convert.ToDateTime(myTable.Rows[i][2].ToString()))
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

        protected void BookingTypeDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(BookingTypeDropDown.SelectedIndex==0)
            {
                txtStartDate.TextMode = TextBoxMode.Date;
                txtEndDate.TextMode = TextBoxMode.Date;
            }
        }
    }
}