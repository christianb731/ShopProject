using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ShopProject.DatabaseAccountAuthentication;

namespace ShopProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
           e.Authenticated = Login(Login1.UserName,Login1.Password);
            if (e.Authenticated)
                Response.Redirect("~/Gallery.aspx");
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Register.aspx");
        }
    }
}