using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Emmas_ProjectLibrary;
using Emmas_ProjectLibrary.EmmasDataSetTableAdapters;

namespace Emmas_ProjectWebApp
{

    //Name : Banuka Kumara AMbegoda
    //Final Project
    //2022-12-16
    public partial class Sales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (dsEmmas.prod_order.Count > 0)
            {
                var rows = from prod_order in dsEmmas.prod_order
                           join on_order in dsEmmas.on_order on prod_order.id equals on_order.prodorderID
                           select new
                           {
                               ID = prod_order.id,
                               Order_Number = on_order.onordNumInOrder,
                               Product_Number = prod_order.pordNumber,
                               Date_Ordered = prod_order.pordDateOrdered,
                               Paid = prod_order.pordPaid,
                               Invoice_Number = on_order.onordInvoiceNum,
                               Arrival_Date = on_order.onordArriveDate,
                               Order_Price = on_order.onordPrice

                           };

                this.GridViewOrder.DataSource = rows;
                this.GridViewOrder.DataBind();
            }
        }

        private static EmmasDataSet dsEmmas;

        static Sales()
        {
            dsEmmas = new EmmasDataSet();
            prod_orderTableAdapter daprod_order = new prod_orderTableAdapter();
            on_orderTableAdapter daon_order = new on_orderTableAdapter();

            try
            {
                daprod_order.Fill(dsEmmas.prod_order);
                daon_order.Fill(dsEmmas.on_order);
            }
            catch { }
        }

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            if (dsEmmas.prod_order.Count > 0)
            {
                var rows = from prod_order in dsEmmas.prod_order
                           join on_order in dsEmmas.on_order on prod_order.id equals on_order.prodorderID
                           where on_order.onordInvoiceNum.ToString().Contains(txbInvoice.Text) && prod_order.pordNumber.ToString().ToUpper().Contains(txbProduct.Text.ToUpper())
                           select new
                           {
                               ID = prod_order.id,
                               Order_Number = on_order.onordNumInOrder,
                               Product_Number = prod_order.pordNumber,
                               Date_Ordered = prod_order.pordDateOrdered,
                               Paid = prod_order.pordPaid,
                               Invoice_Number = on_order.onordInvoiceNum,
                               Arrival_Date = on_order.onordArriveDate,
                               Order_Price = on_order.onordPrice

                           };

                this.GridViewOrder.DataSource = rows;
                this.GridViewOrder.DataBind();
            }
            if (GridViewOrder.Rows.Count == 0)
            {
                Status.Text = "No Records Found";
            }
            else
            {
                Status.Text = "";
            }
        }

        protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
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

        protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
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

        protected void DetailsView2_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
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

        protected void DetailsView2_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
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
    }
}