using System;
using System.Data.SqlClient;


namespace Biker_Portal
{
    public partial class AddCustomers : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-L8LBLKV\MSSQLSERVER01;Initial Catalog=LocalDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            msg.Visible = false;
        }

        protected void add_Click(object sender, EventArgs e)
        {

            con.Open();
            string query = "Insert into Customer (ID,Name,Contact) values (@id,@name,@cc);";

            SqlCommand sqlcmd = new SqlCommand(query, con);

            sqlcmd.Parameters.AddWithValue("@id", cid.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@name", cn.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@cc", cc.Text.Trim());

            sqlcmd.ExecuteNonQuery();
            con.Close();
            msg.Visible = true;
        }
    }
}