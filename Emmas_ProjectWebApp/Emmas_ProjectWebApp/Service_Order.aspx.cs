using Emmas_ProjectLibrary;
using Emmas_ProjectLibrary.EmmasDataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emmas_ProjectWebApp
{
    public partial class Service_Order : System.Web.UI.Page
    {
        private static EmmasDataSet dsEmmas;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (dsEmmas.service.Count > 0)
            {
                var rows = from service in dsEmmas.service
                           where service.serName.ToString().Contains("")
                           select new
                           {
                               ID = service.id,
                               Name = service.serName,
                               Description = service.serDescription,
                               Price = service.serPrice

                           };

                this.GridViewServices.DataSource = rows;
                this.GridViewServices.DataBind();
            }

        }


        static Service_Order()
        {
            dsEmmas = new EmmasDataSet();
            serviceTableAdapter daService = new serviceTableAdapter();

            try
            {
                daService.Fill(dsEmmas.service);
            }
            catch { }
        }

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            if (dsEmmas.service.Count > 0)
            {
                var rows = from service in dsEmmas.service
                           where service.serName.ToString().ToUpper().Contains(TxbService.Text.ToUpper())
                           select new
                           {
                               ID = service.id,
                               Name = service.serName,
                               Description = service.serDescription,
                               Price = service.serPrice

                           };

                this.GridViewServices.DataSource = rows;
                this.GridViewServices.DataBind();
            }
            if (GridViewServices.Rows.Count == 0)
            {
                Status.Text = "No Records Found";
            }
            else
            {
                Status.Text = "";
            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                Response.Write("<script>alert('Error Updating Record! Check weather the inputs are empty or unmatching data')</script>");
            }
            else
            {
                Response.Write("<script>alert('Item updated succesfully!')</script>");
            }
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                Response.Write("<script>alert('Error Deleting Record! Check weather the customers already has connections with other parts of the database')</script>");
            }
            else
            {
                Response.Write("<script>alert('Item deleted succesfully!')</script>");
            }
        }

        protected void GridViewServices_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (GridView1.Rows.Count == 0)
            {
                Status0.Text = "No Records Found";
            }
            else
            {
                Status0.Text = "";
            }
        }
    }
}