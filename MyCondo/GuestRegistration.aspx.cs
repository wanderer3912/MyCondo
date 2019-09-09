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
    public partial class GuestRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateGuest_Click(object sender, EventArgs e)
        {
            //GuestRegistration newGuest = new GuestRegistration();

            //newGuest.GuestName = txtName.Text;
            ////   newGuest.HostId = 
            ////    myBooking.UserId = Convert.ToInt32(ResidentDropDown.SelectedValue);
            //newGuest.VisitorType = VisitorTypeDropDown.SelectedValue;
            //newGuest.Parking = chkParking.Checked;


            
            //try
            //{
            //    SqlCommand command = new SqlCommand();
            //    command.CommandText = "InsertBooking";
            //    command.CommandType = CommandType.StoredProcedure;

            //    command.Parameters.Add("Name", SqlDbType.NVarChar);
            //    command.Parameters["Name"].Value = newGuest.GuestName;

            //    command.Parameters.Add("VisitorType", SqlDbType.NVarChar);
            //    command.Parameters["VisitorType"].Value = newGuest.VisitorType;

            //    command.Parameters.Add("Parking", SqlDbType.Bit);
            //    command.Parameters["Parking"].Value = newGuest.Parking;
            //    //command.Parameters.Add("HostId", SqlDbType.Int);
            //    //command.Parameters["HostId"].Value = newGuest.HostId;

            //    DataConnection myConnection = new DataConnection();
            //    myConnection.ExecuteNonQuery(command);
            //    Response.Redirect("Home.aspx");
            //}
            //catch (Exception ex)
            //{
            //    Response.Write(ex.Message);
            //    {
            //    }
            //}

        }
    }
}