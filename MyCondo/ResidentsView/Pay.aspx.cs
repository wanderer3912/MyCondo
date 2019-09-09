using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo.ResidentsView
{
    public partial class Pay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindpayment();
        }

        private void Bindpayment()
        {
            User Myinfo = new User();
            Myinfo = (User)(Session["User"]);

            DataConnection myConnection = new DataConnection();
            String script = "SELECT Amount, PayerId, ServiceName, PaymentStatus FROM Payment where Payment.PayerId =" + Myinfo.UserId;
            PaymentDisplay.DataSource = myConnection.ExecuteScript(script);
            PaymentDisplay.DataKeyNames = new string[] { "PayerId" };
            PaymentDisplay.DataBind();
        }
    }
}
