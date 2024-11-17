using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.User
{
    public partial class CreateBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/BlogPic/"); 

            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            string ImgPath = "";

            if (this.FileUpload1.HasFile)
            {
                ImgPath = "~/BlogPic/" + this.FileUpload1.FileName.ToString();
                FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string query = "insert into BlogTable (Btitle, Bcontent, BImage, UID, Uname, BDate) values" +
                "(@title, @content, @image, @uid, @uname, @date)";
            SqlCommand cmd1 = new SqlCommand(query, con);

            cmd1.Parameters.AddWithValue("@title", Title.Text);
            cmd1.Parameters.AddWithValue("@content", content.Text);
            cmd1.Parameters.AddWithValue("@image", ImgPath.ToString());
            cmd1.Parameters.AddWithValue("@uid", Session["Uid"]);
            cmd1.Parameters.AddWithValue("@uname", Session["username"]);
            cmd1.Parameters.AddWithValue("@date", DateTime.Now.ToString());

            cmd1.ExecuteNonQuery();
            Response.Redirect("~/All/BrowseBlog.aspx");
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

        protected void Title_TextChanged(object sender, EventArgs e)
        {

        }
    }
}