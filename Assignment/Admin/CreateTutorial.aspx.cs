using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Sql;
using Microsoft.AspNet.FriendlyUrls;

namespace Assignment
{
    public partial class Create_Tutorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/ProfilePic/");

            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            string ImgPath = "";

            if (this.FileUpload1.HasFile)
            {
                ImgPath = "~/ProfilePic/" + this.FileUpload1.FileName.ToString();
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "insert into TutorialTable (Title, Content, Image, Date) values" +
                "(@title, @content, @image, @date)";
            SqlCommand cmd1 = new SqlCommand(query, con);

            cmd1.Parameters.AddWithValue("@title", Title.Text);
            cmd1.Parameters.AddWithValue("@content", content.Text);
            cmd1.Parameters.AddWithValue("@image", ImgPath);
            cmd1.Parameters.AddWithValue("@date", DateTime.Now.ToString());

            cmd1.ExecuteNonQuery();
            Response.Redirect("~/Admin/ManageTutorial.aspx");
            con.Close();
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