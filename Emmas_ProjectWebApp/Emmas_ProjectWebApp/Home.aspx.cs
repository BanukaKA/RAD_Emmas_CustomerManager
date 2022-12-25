using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emmas_ProjectWebApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customers.aspx");
        }

        protected void ButtonInventory_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inventory.aspx");
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Welcome.aspx");
        }

        protected void ButtonService_Click(object sender, EventArgs e)
        {
            Response.Redirect("Service_Order.aspx");
        }

        protected void ButtonSales_Click(object sender, EventArgs e)
        {
            Response.Redirect("Sales.aspx");
        }
    }
}