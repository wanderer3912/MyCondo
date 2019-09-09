using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class Pay : System.Web.UI.MasterPage
    {
        public string UserName { get { return LblName.Text; } set { LblName.Text = value; } }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
            if (Session["User"] != null)
            {
                User Myinfo = new User();
                Myinfo = (User)(Session["User"]);
                LblName.Text = Myinfo.Fname;
                DropdwonName.Text = Myinfo.Fname;
            }
            else
            {
                Response.Redirect("../login.aspx");
            }
        }

        protected void Logout_Click(object sender, EventArgs e)
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
            Response.Redirect("login.aspx");
        }
    }
}
