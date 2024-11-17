﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.All
{
    public partial class ViewBlog_Test : System.Web.UI.Page
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
                title.Text = dr["Btitle"].ToString().Trim();
                content.Text = dr["Bcontent"].ToString().Trim();
                Image1.ImageUrl = dr["BImage"].ToString().Trim();
                Image4.ImageUrl = dr["UImage"].ToString().Trim();
                author.Text = dr["Uname"].ToString().Trim();
                date.Text = dr["BDate"] == DBNull.Value ? string.Empty : Convert.ToDateTime(dr["BDate"]).ToString("MM/dd/yyyy hh:mm:tt");
            }

            dr.Close();
            con.Close();

            Displaycmt(BlogID);
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
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

        private void Displaycmt(string blogID)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            LiteralControl cmtContainer = new LiteralControl();
            cmtContainer.Text = "<div class = 'cmt-container'>";

            SqlCommand cmd1 = new SqlCommand("select UserTable.username As Rname, UserTable.image As RImage" +
                ", ReplyTable.RDate, ReplyTable.RComment " +
                "from ReplyTable Inner Join UserTable On ReplyTable.UID = UserTable.Id " +
                "Where BID = '" + Convert.ToInt32(blogID) + "' Order by RDate DESC", con);
            SqlDataReader dr1 = cmd1.ExecuteReader();

            while (dr1.Read())
            {
                string Rname = dr1["Rname"].ToString().Trim();
                string RImage = dr1["RImage"].ToString().Trim();
                string RDate = dr1["RDate"] == DBNull.Value ? string.Empty : Convert.ToDateTime(dr1["RDate"]).ToString("MM/dd/yyyy hh:mm:tt");
                string RComment = dr1["RComment"].ToString().Trim();

                cmtContainer.Text += $@"
                    <div class= 'cmt-box'>
                    <div class= 'profile-picture'>
                    <img src='{ResolveUrl(RImage)}'/>
                    </div>
                        <div class='DA'>
                        {Rname}
                        <br/>
                        {RDate}
                        <br/>
                        </div>
                        <div class='C'>
                        {RComment}
                        </div>
                    </div>
                    </br>";
            }

                cmtContainer.Text += "</div>";
                dr1.Close();
                con.Close();

                cmtDisplay.Controls.Clear();
                cmtDisplay.Controls.Add(cmtContainer);

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string BlogID = Request.QueryString["BID"];
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into ReplyTable (Rname, RImage, RDate, RComment, BID, UID) values " +
                "(@Rname, @RImage, @RDate, @RComment, @BID, @UID)", con);

            cmd.Parameters.AddWithValue("@Rname", Session["username"]);
            cmd.Parameters.AddWithValue("@RImage", Session["image"]);
            cmd.Parameters.AddWithValue("@RDate", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@RComment", comment.Text);
            cmd.Parameters.AddWithValue("@BID", Convert.ToInt32(BlogID));
            cmd.Parameters.AddWithValue("@UID", Convert.ToInt32(Session["Uid"]));
            cmd.ExecuteNonQuery();

            Displaycmt(BlogID);
            con.Close();

            comment.Text = "";
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
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

    }
}