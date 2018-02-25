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

namespace OCHS
{
    public partial class _Default : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ValidateUser(TextBox1.Text.Trim(), TextBox2.Text.Trim());

        }
        private void ValidateUser(string p, string p_2)
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["OCHSConnectionString"].ConnectionString);


            SqlCommand sqlcmd = new SqlCommand("select * from Booking where booking_id=@booking_id and Password=@USERPWD", sqlcon);
            sqlcmd.Parameters.AddWithValue("@booking_id", p);
            sqlcmd.Parameters.AddWithValue("@USERPWD", p_2);
            sqlcon.Open();
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();

            sqlcmd.ExecuteScalar();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["booking_id"] = TextBox1.Text;
                Response.Redirect("~/custmr/CUS_HOME.aspx");

            }
            else
            {

                Label1.Text = "Please Enter correct Username and Passward";
            }
            sqlcon.Close();

        }


    }
}
