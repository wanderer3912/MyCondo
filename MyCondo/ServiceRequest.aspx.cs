using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class ServiceRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnRequestService_Click(object sender, EventArgs e)
        {
            ServiceRequests serviceRequest = new ServiceRequests();

            serviceRequest.UserId = Convert.ToInt32(ResidentDropDown.SelectedIndex);
            serviceRequest.Subject = txtSubject.Text;
            serviceRequest.Description = txtDescription.Text;

            try
            {
                // Link with the Database
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}