using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
namespace ShopProject
{
    public class DatabaseAccountAuthentication
    {
        static string ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Metro\\Documents\\GitHub\\ShopProject\\DBShop.mdf;Integrated Security=True;Connect Timeout=30";
        

        public static bool Register(string Username, string Password)
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand select = new SqlCommand("Select * from UserAccounts WHERE Username = @user");
            
            select.Connection = conn;
            select.Parameters.AddWithValue("@user", Username);
            adapter.SelectCommand = select;
            conn.Open();

            Random rand = new Random();
            int newID = rand.Next(1, 10000);
            SqlCommand update = new SqlCommand("Insert into UserAccounts (Id, Username, Password) VALUES (@id, @user, @pass)");
            update.Parameters.AddWithValue("@id", newID);
            update.Parameters.AddWithValue("@user", Username);
            update.Parameters.AddWithValue("@pass", Password);
            update.Connection = conn;
            DataTable dt = new DataTable();
            adapter.Fill(dt);

            if(dt.Rows.Count > 0)
            {
                conn.Close();
                return false; //If registration fails here, it is because the username is already in use.
            }
            update.ExecuteNonQuery();
            conn.Close();
            return true; 
        }
        public static bool Login(string Username, string Password) //Can change return type if necessary
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            SqlConnection conn = new SqlConnection(ConnectionString);
            SqlCommand select = new SqlCommand("Select * from UserAccounts WHERE Username = @user AND Password = @pass");

            select.Connection = conn;
            select.Parameters.AddWithValue("@user", Username);
            adapter.SelectCommand = select;
            conn.Open();

            DataTable dt = new DataTable();
            adapter.Fill(dt);
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            return false;
        }
    }
}