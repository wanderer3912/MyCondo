using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class BookingsView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateBooking_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookings.aspx");
        }

        protected void BookingDisplay_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onmouseover"] += "this.style.backgroundColor='#CC3333';";
                e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
                e.Row.ToolTip = "Select to see details";
            }
        }

        protected void BookingsDisplay_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}