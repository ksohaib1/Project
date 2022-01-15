using System;
using System.Data.SqlClient;

namespace Biker_Portal
{
    public partial class Booking : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-L8LBLKV\MSSQLSERVER01;Initial Catalog=LocalDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Msg.Visible = false;
        
            if (!IsPostBack)
            {
                con.Open();
                string query = "select ID from Customer";
                SqlCommand cmd = new SqlCommand(query, con);
                Customers.DataSource = cmd.ExecuteReader();
                Customers.DataValueField = "ID";
                Customers.DataBind();
                con.Close();

            }
            if (!IsPostBack)
            {

                con.Open();
                SqlCommand cmd1 = new SqlCommand("select area from Employee where email=@e And password=@p", con);
                cmd1.Parameters.AddWithValue("@e", Session["Email"]);
                cmd1.Parameters.AddWithValue("@p", Session["Password"]);
                string area = Convert.ToString(cmd1.ExecuteScalar());
                Session["ar"] = area;
                string query1 = "select ID from Bike where Bike.Location = @a And Bike.Availability = 'Yes'; ";
                cmd1 = new SqlCommand(query1, con);
                cmd1.Parameters.AddWithValue("@a", area);
                Bike.DataSource = cmd1.ExecuteReader();
                Bike.DataValueField = "ID";
                Bike.DataBind();
                con.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
            con.Open();
            string query = "Insert into Booking (cID,bID,BikeArrivalTime) values (@cid,@bid,@at);";
            SqlCommand sqlcmd = new SqlCommand(query, con);
            sqlcmd.Parameters.AddWithValue("@cid", Customers.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@bid", Bike.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@at", at.Text.Trim());
            sqlcmd.ExecuteNonQuery();
            string query1 = "Update Bike Set Availability = 'No' where ID = @id;";
            sqlcmd = new SqlCommand(query1, con);
            sqlcmd.Parameters.AddWithValue("@id", Bike.SelectedValue);
            sqlcmd.ExecuteScalar();
            con.Close();
            Msg.Visible = true;
        }
    }
}