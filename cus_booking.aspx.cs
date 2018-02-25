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
    public partial class cus_booking : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["OCHSConnectionString"].ConnectionString);
       
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegisterUser(object sender, EventArgs e)
        {
            
        }

        protected void Print_details(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcmd = new SqlCommand("insert into Booking(name,[add],source,pic_date,drop_date,destination,car,booking_id,password,contact_no,[e-mail]) values('" + txtUsername.Text + "','" + TextBox1.Text + "','" + DropDownList2.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + txtbid.Text + "','" + txtPassword.Text + "','" + txtcno.Text + "','" + txtEmail.Text + "')", sqlcon);
            sqlcon.Open();
            sqlcmd.ExecuteNonQuery();

            {
                Session["booking_id"] = txtbid.Text;
                Server.Transfer("~/reg_suc.aspx");

            }

            sqlcon.Close();
           
        }

        protected void txtbid_TextChanged(object sender, EventArgs e)
        {
            sqlcon.Open();
            SqlCommand cmd = new SqlCommand("select booking_id from Booking  where booking_id='" + txtbid.Text + "'", sqlcon);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Label2.Text = "booking_id is Already Exist. Check another.";

            }
            else
            {
                Label2.Text = "booking_id is available.";

            }
            sqlcon.Close();
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            sqlcon.Open();

            string no_of_cars = ("select no_of_cars from Old_car  where car_name='" + DropDownList4.SelectedValue + "'");
            SqlCommand cmd2 = new SqlCommand(no_of_cars, sqlcon);
            SqlDataReader sdrB = cmd2.ExecuteReader();

            while (sdrB.Read())
            {
                TextBox4.Text = sdrB["no_of_cars"].ToString();
            }
            sqlcon.Close();


            sqlcon.Open();

            SqlCommand sqlcmd = new SqlCommand("select count (*) from Booking  where car='" + DropDownList4.SelectedValue + "'", sqlcon);
            int count = (int)sqlcmd.ExecuteScalar();

            //calculation

           int a = Convert.ToInt16(TextBox4.Text);
         
           if (a > count)
            {

                Label3.Text = "Car is available";
            }
            else {
                Label3.Text = "Car is Not available";
            }
            sqlcon.Close();
        }
    }
}