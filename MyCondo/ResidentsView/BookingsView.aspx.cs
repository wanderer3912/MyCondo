using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo.ResidentsView
{
    public partial class BookingsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bindGrid();
            }
        }

        private void bindGrid()
        {
            User Myinfo = new User();
            Myinfo = (User)(Session["User"]);

            DataConnection myConnection = new DataConnection();
            String script = "SELECT  BookingId,BookingType, StartDate, EndDate, BookingDescription, BookingStatus FROM Booking where Booking.UserId ="+Myinfo.UserId;
            BookingsDisplay.DataSource = myConnection.ExecuteScript(script);
            BookingsDisplay.DataKeyNames = new string[] { "BookingId" };
            BookingsDisplay.DataBind();
        }
    }
}