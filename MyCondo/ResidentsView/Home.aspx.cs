using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo.ResidentsView
{
    public partial class ResidentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindNewsFeed();
            }
        }

        private void BindNewsFeed()
        {
            DataConnection myConnection = new DataConnection();
            String script = "select FeedId,title,Description, Convert(varchar(20), CreationDate, 106) As CreationDate from Newsfeed order by Creationdate DESC;";
            NewsFeedView.DataSource = myConnection.ExecuteScript(script);
            NewsFeedView.DataKeyNames = new string[] { "FeedId" };
            NewsFeedView.DataBind();
        }

        protected void NewsFeedView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onmouseover"] += "this.style.backgroundColor='#CC3333';";
                e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
                e.Row.ToolTip = "Select to see details";
            }
        }
    }
}