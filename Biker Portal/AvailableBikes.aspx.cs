using System;
using System.Data.SqlClient;

namespace Biker_Portal
{
    public partial class AvailableBikes : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-L8LBLKV\MSSQLSERVER01;Initial Catalog=LocalDB;Integrated Security=True");
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            GetDataIngridView();
        }
        public void GetDataIngridView()
        {
            con.Open();
            cmd = new SqlCommand("select area from Employee where email=@e And password=@p", con);
            cmd.Parameters.AddWithValue("@e", Session["Email"]);
            cmd.Parameters.AddWithValue("@p", Session["Password"]);
            string area = Convert.ToString(cmd.ExecuteScalar());
            cmd = new SqlCommand("select ID,Company,Location,Rent  from Bike where Bike.Location = @a And Bike.Availability = 'Yes';", con);
            cmd.Parameters.AddWithValue("@a", area);
            dr = cmd.ExecuteReader();

            if (dr==null)
            {
                Label1.Visible = true;
            }
            else
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
                con.Close();
            }
        }
    }
}
