using System;
using System.Data.SqlClient;

namespace Biker_Portal
{
    public partial class Employee : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-L8LBLKV\MSSQLSERVER01;Initial Catalog=LocalDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            msg.Visible = false;
        }

        protected void add_Click(object sender, EventArgs e)
        {



            con.Open();
            string query = "Insert into Employee (ID,name,email,contact,password,area) values (@id,@name,@email,@cn,@pass,@area);";

            SqlCommand sqlcmd = new SqlCommand(query, con);

            sqlcmd.Parameters.AddWithValue("@id", eid.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@name", n.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@email", em.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@cn", Convert.ToDecimal(ec.Text));
            sqlcmd.Parameters.AddWithValue("@pass", p.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@area", a.Text.Trim());
            sqlcmd.ExecuteNonQuery();
            con.Close();
            msg.Visible = true;

        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}