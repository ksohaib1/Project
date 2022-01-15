using System;
using System.Data.SqlClient;

namespace Biker_Portal
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Error.Visible = false;
            if (!IsPostBack)
            {
                if (Request.Cookies["Email"] != null && Request.Cookies["Password"] != null)
                {
                    un.Text = Request.Cookies["Email"].Value;
                    p.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
        }
        public void Login_Click1(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-L8LBLKV\MSSQLSERVER01;Initial Catalog=LocalDB;Integrated Security=True"))
            {
                con.Open();
                string query = "select Count(1) from Employee where Email=@Email and Password = @Password";
                SqlCommand sqlcmd = new SqlCommand(query, con);
                sqlcmd.Parameters.AddWithValue("@Email", un.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Password", p.Text.Trim());
                int ch = Convert.ToInt32(sqlcmd.ExecuteScalar());
                if (ch == 1)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["Email"].Value = un.Text;
                        Response.Cookies["Password"].Value = p.Text;
                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(1);
                    }
                    Session["Email"] = un.Text.Trim();
                    Session["Password"] = p.Text.Trim();
                    Response.Redirect("Customers.aspx");
                }
                else
                {
                    Error.Visible = true;
                }
            }
        }

        protected void AdminLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-L8LBLKV\MSSQLSERVER01;Initial Catalog=LocalDB;Integrated Security=True"))
            {
                con.Open();
                string query = "select Count(1) from admin where Email=@Email and Password = @Password";
                SqlCommand sqlcmd = new SqlCommand(query, con);
                sqlcmd.Parameters.AddWithValue("@Email", un.Text.Trim());
                sqlcmd.Parameters.AddWithValue("@Password", p.Text.Trim());
                int ch = Convert.ToInt32(sqlcmd.ExecuteScalar());
                if (ch == 1)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["Email"].Value = un.Text;
                        Response.Cookies["Password"].Value = p.Text;
                        Response.Cookies["Email"].Expires = DateTime.Now.AddDays(1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(1);
                    }
                    Session["Email"] = un.Text.Trim();
                    Session["Password"] = p.Text.Trim();
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Error.Visible = true;
                }
            }
        }
    }
}