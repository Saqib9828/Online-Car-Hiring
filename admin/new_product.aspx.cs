using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Collections.Generic;
using System.Configuration;

namespace OCHS.admin
{
    public partial class new_product : System.Web.UI.Page
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["OCHSConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("insert into car(Name_Of_Car,Description,pic) values('" + TextBox1.Text + "','" + TextBox2.Text + "',@fileName)", sqlcon);
            sqlcmd.Parameters.AddWithValue("@fileName", "~/admin/car_images/" + fileName);

            sqlcmd.ExecuteNonQuery();

            {

                Label1.Text = "New Car Add Successfully.";

            }
            sqlcon.Close();

            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/admin/car_images/") + fileName);
            Response.Redirect(Request.Url.AbsoluteUri);
            
        }
    }
}