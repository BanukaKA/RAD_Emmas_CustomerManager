using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Emmas_ProjectLibrary;
using Emmas_ProjectLibrary.EmmasDataSetTableAdapters;
using System.Data;


namespace Emmas_ProjectWebApp
{

    //Name : Banuka Kumara AMbegoda
    //Final Project
    //2022-12-16
    public partial class Inventory : System.Web.UI.Page
    {

        private static EmmasDataSet dsEmmas;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (dsEmmas.product.Count > 0)
            {
                var rows = from product in dsEmmas.product
                           where product.prodName.ToString().Contains("")
                           select new
                           {
                               ID = product.id,
                               Name = product.prodName,
                               Description = product.prodDescription,
                               Brand = product.prodBrand

                           };

                this.GridViewProduct.DataSource = rows;
                this.GridViewProduct.DataBind();
            }
            
        }

        
        static Inventory()
        {
            dsEmmas = new EmmasDataSet();
            productTableAdapter daProduct = new productTableAdapter();

            try
            {
                daProduct.Fill(dsEmmas.product);
            }
            catch { }
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            if (dsEmmas.product.Count > 0)
            {
                var rows = from product in dsEmmas.product
                       where product.prodName.ToString().ToUpper().Contains(TxbSearch.Text.ToUpper())
                       select new
                       {
                           ID = product.id,
                           Name = product.prodName,
                           Description = product.prodDescription,
                           Brand = product.prodBrand

                       };

                this.GridViewProduct.DataSource = rows;
                this.GridViewProduct.DataBind();
            }
            if(GridViewProduct.Rows.Count == 0)
            {
                Status.Text = "No Records Found";
            }
            else
            {
                Status.Text = "";
            }
        }

        protected void ProductForm_ItemDeleted(object sender, FormViewDeletedEventArgs e)
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

        protected void InventoryForm_ItemDeleted(object sender, FormViewDeletedEventArgs e)
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

        protected void InventoryForm_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                Response.Write("<script>alert('Error Inserting Record! Check weather if required inputs are empty or filled with unmatching data')</script>");
            }
            else
            {
                Response.Write("<script>alert('Item insert succesfully!')</script>");
            }
        }

        protected void ProductForm_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.ExceptionHandled = true;
                Response.Write("<script>alert('Error Inserting Record! Check weather if required inputs are empty or filled with unmatching data')</script>");
            }
            else
            {
                Response.Write("<script>alert('Item insert succesfully!')</script>");
            }
        }

        protected void ProductForm_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
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

        protected void InventoryForm_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
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

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}