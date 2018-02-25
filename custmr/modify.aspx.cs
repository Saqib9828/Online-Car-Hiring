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

namespace OCHS
{
    public partial class modify : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(@"Data Source=.\SQLEXPRESS3;
AttachDbFilename=C:\Users\MOHD SAQIB\Documents\OCHS.mdf;Integrated Security=True;
Connect Timeout=30;User Instance=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["booking_id"] != null)
            {

            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }


            Label4.Text = Session["booking_id"] as String;

            sqlcon.Open();
            string namel = ("select name from Booking where booking_id='" + Label4.Text + "'");
            SqlCommand cmdl = new SqlCommand(namel, sqlcon);
            SqlDataReader sdrl = cmdl.ExecuteReader();

            while (sdrl.Read())
            {
                txtUsername.Text = sdrl["name"].ToString();
            }
            sqlcon.Close();


            
            
        }

       
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("Update Booking set name='" + txtUsername.Text + "',source='" + DropDownList2.Text + "',pic_date='" + TextBox2.Text + "',drop_date='" + TextBox3.Text + "',destination='" + DropDownList3.Text + "',car='" + DropDownList4.Text + "' where booking_id='" + Label4.Text + "'", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {

               
                Response.Redirect("~/custmr/mod_suc.aspx");


            }

            sqlcon.Close();
        
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}