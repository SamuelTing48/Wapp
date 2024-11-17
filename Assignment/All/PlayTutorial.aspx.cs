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
    public partial class PlayTutorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usertype"].ToString() == "Admin")
            {
                LinkButton3.Visible = true;
                LinkButton3.Enabled = true;
            }else if (Session["usertype"].ToString() == "Member")
            {
                LinkButton3.Visible = false;
                LinkButton3.Enabled = false;
            }

            string TutorialID = Request.QueryString["TId"];

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("select Title, Content, Image, Date " +
            "from TutorialTable Where TId ='" + Convert.ToInt32(TutorialID) + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                title.Text = dr["Title"].ToString().Trim();
                content.Text = dr["Content"].ToString().Trim();
                Image1.ImageUrl = dr["Image"].ToString().Trim();
                date.Text = dr["Date"] == DBNull.Value ? string.Empty : Convert.ToDateTime(dr["Date"]).ToString("MM/dd/yyyy hh:mm:tt");
            }

            dr.Close();
            con.Close();
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

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            string TutorialID = Request.QueryString["TId"];

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("Delete from TutorialTable where TId = '" + Convert.ToInt32(TutorialID) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Admin/ManageTutorial.aspx");
        }
    }
}