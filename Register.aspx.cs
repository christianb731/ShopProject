using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static ShopProject.DatabaseAccountAuthentication;
namespace ShopProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            bool success = Register(CreateUserWizard1.UserName, CreateUserWizard1.Password);
        }
    }
}