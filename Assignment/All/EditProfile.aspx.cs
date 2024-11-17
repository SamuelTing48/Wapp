using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.All
{
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                SqlDataAdapter da = new SqlDataAdapter("select * from UserTable where username = '" +
                    Session["username"] + "'", con);

                DataTable dt = new DataTable();
                da.Fill(dt);

                name.Text = dt.Rows[0][1].ToString();
                email.Text = dt.Rows[0][3].ToString();
                descrip.Text = dt.Rows[0][5].ToString();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string folderpath = Server.MapPath("~/ProfilePic/");

            if (!Directory.Exists(folderpath))
            {
                Directory.CreateDirectory(folderpath);
            }

            string ImgPath = "";

            if (this.FileUpload1.HasFile)
            {
                ImgPath = "~/ProfilePic/" + this .FileUpload1.FileName.ToString();
                FileUpload1.SaveAs(folderpath + Path.GetFileName(FileUpload1.FileName));
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("update UserTable set username = '" + name.Text + "', email = " +
                "'" + email.Text + "', description = '" + descrip.Text + "', image = '" + ImgPath + "'" +
                " where username = '" + Session["username"] + "'", con);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/All/Profile.aspx");
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            if (Session["usertype"].ToString() == "Admin")
            {
                Response.Redirect("~/Admin/ManageTutorial.aspx");
            }
            else if (Session["usertype"].ToString() == "Member")
            {
                Response.Redirect("~/All/BrowseTutorial.aspx");
            }
        }


        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (Session["usertype"].ToString() == "Admin")
            {
                Response.Redirect("~/Admin/ManageTutorial.aspx");
            }
            else if (Session["usertype"].ToString() == "Member")
            {
                Response.Redirect("~/All/BrowseTutorial.aspx");
            }
        }
    }
}