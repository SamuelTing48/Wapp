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
    public partial class EditBlog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string BlogID = Request.QueryString["BID"];

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select BlogTable.Btitle, BlogTable.Bcontent, BlogTable.BImage" +
                    ", UserTable.username AS Uname, UserTable.image AS UImage, BlogTable.BDate from BlogTable" +
                    " Inner Join UserTable On BlogTable.UID = UserTable.Id where BID = '" + Convert.ToInt32(BlogID) + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                TextBox1.Text = dr["Btitle"].ToString().Trim();
                TextBox2.Text = dr["Bcontent"].ToString().Trim();
                Image1.ImageUrl = dr["BImage"].ToString().Trim();
            }

            dr.Close();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string BlogID = Request.QueryString["BID"];
            int bid = Convert.ToInt32(BlogID);

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

            SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con1.Open();

            string query = "update BlogTable set Btitle = '"+ TextBox1.Text+ "', Bcontent = '"+TextBox2.Text+"', " +
            "BImage = '"+ImgPath+"' where BID = '" + bid + "'";
            SqlCommand cmd1 = new SqlCommand(query, con1);

            cmd1.ExecuteNonQuery();
            con1.Close();
            Response.Redirect("~/User/ManageBlog.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            string BlogID = Request.QueryString["BID"];

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("Delete from BlogTable where BID = '" + Convert.ToInt32(BlogID) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/User/ManageBlog.aspx");
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