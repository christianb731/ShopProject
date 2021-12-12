using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopProject
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        public DataTable CartContents
        {
            get;
            private set;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //CartContents = DatabasePullItems.getAllItems();
                CartContents = Session["ShoppingCart"] as DataTable;
                if (CartContents != null)
                {
                    GridView1.DataSource = new DataView(CartContents);
                    GridView1.DataBind();
                }
            }
        }

        protected void ClearCart_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            CartContents = null;
            GridView1.DataBind();
        }
    }
}