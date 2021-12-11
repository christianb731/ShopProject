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
            CartContents = DatabasePullItems.getAllItems();
            //CartContents = Session["CartContents"] as DataTable;
            GridView1.DataSource = new DataView(CartContents);
            GridView1.DataBind();
        }
    }
}