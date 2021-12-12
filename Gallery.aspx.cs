using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopProject
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                productsGridView.DataSource = new DataView(DatabasePullItems.getAllItems());
                productsGridView.DataBind();
            }
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            var button = sender as Button;
            if (button == null)
                return;

            var productId = button.CommandArgument;
            if (string.IsNullOrWhiteSpace(productId))
                return;

            if (Session["ShoppingCart"] == null)
            {
                DataTable cart = new DataTable();
                cart.Columns.Add("Id");
                cart.Columns.Add("name");
                cart.Columns.Add("Price");
                cart.Columns.Add("ImagePath");
                Session.Add("ShoppingCart", cart);
            }

            var item = DatabasePullItems.getItemById(Int32.Parse(productId));
            foreach (DataRow row in item.Rows)
            {
                var cart = Session["ShoppingCart"] as DataTable;
                cart.Rows.Add(row.ItemArray);
            }
        }

        protected void ClearCart_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}