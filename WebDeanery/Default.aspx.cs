using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebDeanery
{
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "Admin"))
                {

                    Response.Redirect("~/AdminPages/AdminMainPage.aspx");
                }

                else if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "Student"))
                {

                    Response.Redirect("~/StudentsPages/StudentPage.aspx");
                }
                else if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "Dekanat"))
                {

                    Response.Redirect("~/DeaneryPages/DeaneryPage.aspx");
                }
                else if (Roles.IsUserInRole(HttpContext.Current.User.Identity.Name, "Parent"))
                {
                    Response.Redirect("~/ParentsPages/ParentPage.aspx");
                }
            }
        }

        protected void LoginButton_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}