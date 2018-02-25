using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Configuration;

namespace OCHS.admin
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["OCHSConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Validateadmin(TextBox1.Text.Trim(), TextBox2.Text.Trim());

        }
        private void Validateadmin(string p, string p_2)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["OCHSConnectionString"].ConnectionString);


            SqlCommand sqlcmd = new SqlCommand("select * from admin_data where admin_id=@admin_id and pass=@USERPWD", sqlcon);
            sqlcmd.Parameters.AddWithValue("@admin_id", p);
            sqlcmd.Parameters.AddWithValue("@USERPWD", p_2);
            sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();

            sqlcmd.ExecuteScalar();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["admin_id"] = TextBox1.Text;
                Response.Redirect("~/admin/homeadmin.aspx");

            }
            else
            {

                Label1.Text = "Please Enter correct Username and Password";
            }
            sqlcon.Close();

        }

    }
}