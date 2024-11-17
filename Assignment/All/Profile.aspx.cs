using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.Admin
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                uname.Text = Session["username"].ToString();
            }
            else
            {
                Response.Redirect("~/All/Login Page.aspx");
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select username, email, description, image from UserTable where " +
                "username = '" + Session["username"] + "'",con);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Username.Text = dr["username"].ToString().Trim();
                email.Text = dr["email"].ToString().Trim();
                descrip.Text = dr["description"].ToString().Trim();
                Image1.ImageUrl = dr["image"].ToString().Trim();
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Request.Cookies.Clear();

            Response.Redirect("~/Visitor/Home Page(Visitor).aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/User/ManageBlog.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/All/EditProfile.aspx");
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