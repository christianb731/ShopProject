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


                    ///int i = 0;
                    ///var item = DatabasePullItems.getItemById(Int32.Parse(productId));
                    ///
                    DataTable dt = new DataTable();
                    dt.Columns.AddRange(new DataColumn[3] {
                    new DataColumn("Name", typeof(string)),
                    new DataColumn("Price",typeof(Double)),
                    new DataColumn("Quantity",typeof(Int32))
                    });

                    Dictionary<string, int>cartmap = new Dictionary<string, int> ();
                    foreach (DataRow row in CartContents.Rows)
                    {
                        var key = row[1].ToString();
                        if (cartmap.ContainsKey(key))
                        {
                            cartmap[key] = cartmap[key] + 1;
                        }
                        else
                        {
                            cartmap.Add(key, 1);

                        }

                    }
                    double total = 0;
                    foreach (DataRow row in CartContents.Rows)
                    {
                        var key = row[1].ToString();

                        if (cartmap.ContainsKey(key))
                        {
                            dt.Rows.Add(row[1], row[2], cartmap[key]);
                            total += double.Parse((string)row[2])*cartmap[key];
                            cartmap.Remove(key);
                        }
                    }




                    GridView1.DataSource = new DataView(dt); //CartContents

                    GridView1.DataBind();
                    TotalLabel.Text = "Total Spent: $" + total;


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