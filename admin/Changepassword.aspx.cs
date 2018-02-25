using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OCHS.admin
{
    public partial class Changepassword : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["OCHSConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = Session["admin_id"] as String;
            Label4.Text = Session["admin_id"] as String;
            sqlcon.Open();
            string admin_id = ("select admin_id from admin_data where admin_id='" + TextBox1.Text + "'");
            SqlCommand cmd = new SqlCommand(admin_id, sqlcon);
            SqlDataReader sdr = cmd.ExecuteReader();

            while (sdr.Read())
            {
                Label4.Text = sdr["admin_id"].ToString();
            }
            sqlcon.Close();



            sqlcon.Open();

            string pass = ("select pass from admin_data  where admin_id='" + TextBox1.Text + "'");
            SqlCommand cmd2 = new SqlCommand(pass, sqlcon);
            SqlDataReader sdrB = cmd2.ExecuteReader();

            while (sdrB.Read())
            {
                TextBox7.Text = sdrB["pass"].ToString();
            }
            sqlcon.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox3.Text == TextBox7.Text)
            {
                if (TextBox6.Text == TextBox5.Text)
                {
                    SqlCommand sqlcmd = new SqlCommand("Update admin_data set pass='" + TextBox6.Text + "' where admin_id='" + TextBox1.Text + "'", sqlcon);
                    sqlcon.Open();
                    sqlcmd.ExecuteNonQuery();

                    {

                        Label3.Text = "Password Changed Succesfully.";

                    }
                }
                else
                {
                    Label3.Text = "Confirmation Password Failed.";
                }
            }
            else
            {
                Label3.Text = "Incorrect Old Password.";
            }

            sqlcon.Close();


        }
    }
}