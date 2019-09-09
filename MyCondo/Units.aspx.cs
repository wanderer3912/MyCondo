using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyCondo
{
    public partial class Unit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateUnit_Click(object sender, EventArgs e)
        {

            Units myunit = new Units();
            
            myunit.UnitNumber = Convert.ToInt32(txtUnitNumber.Text);
            myunit.Occupancy = txtOccupancy.Text;
            myunit.OwnerUserID = Convert.ToInt32(txtOwnerUserID.Text);
            myunit.UnitAdressID = Convert.ToInt32(txtUnitAddressID.Text);
            myunit.OwnerAdressID = Convert.ToInt32(txtOwnerAddressID.Text);
            myunit.OccupancyDate = Convert.ToDateTime(txtOccupancyDate.Text);

            if (!CheckUnit(myunit.UnitNumber))
            {

                try
                {
                    SqlCommand command = new SqlCommand();
                    command.CommandText = "InsertUnits";
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add("UnitNumber", SqlDbType.Int);
                    command.Parameters["UnitNumber"].Value = myunit.UnitNumber;

                    command.Parameters.Add("Occupancy", SqlDbType.NChar);
                    command.Parameters["Occupancy"].Value = myunit.Occupancy;

                    command.Parameters.Add("OwnerUserID", SqlDbType.Int);
                    command.Parameters["OwnerUserID"].Value = myunit.OwnerUserID;

                    command.Parameters.Add("UnitAdressID", SqlDbType.Int);
                    command.Parameters["UnitAdressID"].Value = myunit.UnitAdressID;

                    command.Parameters.Add("OwnerAdressID", SqlDbType.Int);
                    command.Parameters["OwnerAdressID"].Value = myunit.OwnerAdressID;

                    command.Parameters.Add("OccupancyDate", SqlDbType.DateTime);
                    command.Parameters["OccupancyDate"].Value = myunit.OccupancyDate;

                    DataConnection myConnection = new DataConnection();
                    myConnection.ExecuteNonQuery(command);
                    Response.Redirect("Home.aspx");
                    lblUnitAlreadyBooked.Visible = false;
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
            else
            {
                // Display Error
                lblUnitAlreadyBooked.Visible = true;

                // Reset all the Values
                txtUnitNumber.Text = "";
                txtOccupancy.Text = "";
                txtOwnerUserID.Text = "";
                txtOwnerAddressID.Text = "";
                txtUnitAddressID.Text = "";
                txtOccupancyDate.Text = "";
            }

        }

        private bool CheckUnit(int unitNumber)
        {
            bool found = false;
            DataConnection myConnection = new DataConnection();
            String script = "Select UnitNumber from Units";
            DataTable myTable = myConnection.ExecuteScript(script);
            myConnection.conn.Close();
            if (myTable.Rows.Count > 0)
            {
                for (int i = 0; i < myTable.Rows.Count; i++)
                {
                    if (unitNumber == Convert.ToInt32(myTable.Rows[i][0]))
                    {
                        found = true;
                        break;
                    }
                }
            }
            return found;
        }
    }
}