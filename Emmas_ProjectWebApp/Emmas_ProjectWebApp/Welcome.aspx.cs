//PROG1210
//Vanscoy

//Welcome page

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Emmas_ProjectWebApp
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (User.Identity.IsAuthenticated)
            {
                lnkHome.Enabled = true;
                lnkLogout.Text = "Logout";
            }
            else
            {
                lnkLogout.Text = "Login";
            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            if (lnkLogout.Text == "Logout")
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                authenticationManager.SignOut();
            }
            Response.Redirect("~/Login.aspx");
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");

        }
    }
}