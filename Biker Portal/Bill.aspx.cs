using System;
using System.Data.SqlClient;


namespace Biker_Portal
{
    public partial class Bill : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-L8LBLKV\MSSQLSERVER01;Initial Catalog=LocalDB;Integrated Security=True");
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                con.Open();
                string query = "select cID from Booking";
                SqlCommand cmd = new SqlCommand(query, con);
                Customers.DataSource = cmd.ExecuteReader();
                Customers.DataValueField = "cID";
                Customers.DataBind();
                Session["id"] = Customers.SelectedValue;
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            con.Open();
            SqlCommand cmd = new SqlCommand("Update Booking Set BikeRecievingTime = @rt where cID= @id1 ", con);
            cmd.Parameters.AddWithValue("@rt", float.Parse(rt.Text.Trim().ToString()));
            cmd.Parameters.AddWithValue("@id1", Convert.ToString(Customers.SelectedValue));
            cmd.ExecuteScalar();
            cmd = new SqlCommand("select TOP 1 *  from Booking where cID=@id order by (ID) DESC ", con);
            cmd.Parameters.AddWithValue("@id", Session["id"]);
            Session["id"] = (Customers.SelectedValue).Trim();
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "Select TOP 1 BikeArrivalTime from Booking where cID=@id order by (ID) DESC";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Session["id"]);
            double a = Convert.ToDouble(cmd.ExecuteScalar());
            cmd = new SqlCommand("Select TOP 1 BikeRecievingTime from Booking where cID = @id order by(ID) DESC", con);
            cmd.Parameters.AddWithValue("@id", Session["id"]);
            double b = Convert.ToDouble(cmd.ExecuteScalar());
            int r = Convert.ToInt32(rent.Text);
            double total = (b - a) * r;
            
            cmd = new SqlCommand("select TOP 1 bID from Booking where cID=@id order by (ID) DESC ", con);
            cmd.Parameters.AddWithValue("@id", Customers.SelectedValue);
            string id = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            con.Open();
            cmd = new SqlCommand("select area from Employee where email=@e And password=@p", con);
            cmd.Parameters.AddWithValue("@e", Session["Email"]);
            cmd.Parameters.AddWithValue("@p", Session["Password"]);
            string area = Convert.ToString(cmd.ExecuteScalar());
            con.Close();
            con.Open();

            cmd = new SqlCommand("Update Bike Set Availability= 'Yes', Location = @a where ID = @id;", con);
            cmd.Parameters.AddWithValue("@a", area);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            
            con.Close();
            Label5.Text = Convert.ToString(total);
        }

    }
}