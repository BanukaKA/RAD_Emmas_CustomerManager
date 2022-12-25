using Emmas_ProjectLibrary;
using Emmas_ProjectLibrary.EmmasDataSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Emmas_ProjectWebApp
{

    //Name : Banuka Kumara AMbegoda
    //Final Project
    //2022-12-16
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private static EmmasDataSet dsEmmas;
        private DataRow[] rows;
        private DataRow current;

        static Customers()
        {
            dsEmmas = new EmmasDataSet();
            SearchCustomerTableAdapter daCustomer = new SearchCustomerTableAdapter();

            try
            {
                daCustomer.Fill(dsEmmas.SearchCustomer);
            }
            catch { }
        }



        protected void SearchByCustomer_Click(object sender, EventArgs e)
        {
            List<string> lst = new List<string>();
            Dictionary<string, string> data = new Dictionary<string, string>();
            if (dsEmmas.SearchCustomer.Count > 0)
            {
                string criteria = GetCustomerCriteria();
                rows = (criteria.Length > 0) ? dsEmmas.SearchCustomer.Select(criteria) :
                    dsEmmas.SearchCustomer.Select();

                this.LstBxCustomers.Items.Clear();
                foreach (DataRow r in rows)
                {
                    if (lst.Contains(r.ItemArray[0].ToString()) == false)
                    {
                        lst.Add(r.ItemArray[0].ToString());
                        data.Add(r.ItemArray[0].ToString() + " " + r.ItemArray[1].ToString(), r.ItemArray[2].ToString());
                    }
                }
                this.LstBxCustomers.DataSource = data;
                this.LstBxCustomers.DataTextField = "Key";
                this.LstBxCustomers.DataValueField = "Value";
                this.LstBxCustomers.DataBind();
                Status.Text = "Search Results: " + ((rows.Length > 0) ? lst.Count.ToString() : "0");
            }
            else
            {
                this.Status.Text = "No Records";
            }
        }

        private string GetCustomerCriteria()
        {
            string criteria = "";
            criteria = (this.TxbLastName.Text.Length > 0) ? "custLast Like '" + this.TxbLastName.Text + "*'" : "";
            criteria += (this.TxbFirstName.Text.Length > 0 && criteria.Length > 0) ? "And custFirst Like '" + this.TxbFirstName.Text + "'"
                : (this.TxbFirstName.Text.Length > 0) ? "custFirst Like '" + this.TxbFirstName.Text + "'" : "";
            criteria += (this.TxbCustomerCity.Text.Length > 0 && criteria.Length > 0) ? "And custCity Like '" + this.TxbCustomerCity.Text + "'"
                : (this.TxbCustomerCity.Text.Length > 0) ? "custCity Like '" + this.TxbCustomerCity.Text + "'" : "";
            criteria += (this.EquipmentDropDown.Text != "None" && criteria.Length > 0) ? "And eqID = " + this.EquipmentDropDown.SelectedValue.ToString()
                : (this.EquipmentDropDown.Text != "None") ? "eqID = " + this.EquipmentDropDown.SelectedValue.ToString() : "";
            return criteria;

        }

        protected void LstBxCustomers_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.CustDataFormView.PageIndex = this.LstBxCustomers.SelectedIndex;
        }

        protected void CustDataFormView_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
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

        protected void CustDataFormView_ItemDeleted(object sender, FormViewDeletedEventArgs e)
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

        protected void CustDataFormView_ItemInserted(object sender, FormViewInsertedEventArgs e)
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}