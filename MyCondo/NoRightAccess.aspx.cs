using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class NoRightAccess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Logout();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Logout();
            Response.Redirect("login.aspx");
        }

        private void Logout()
        {
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
    }
}