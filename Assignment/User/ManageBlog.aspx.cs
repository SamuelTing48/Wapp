using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.User
{
    public partial class ManageBlog1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayBlogs();
        }

        private void DisplayBlogs()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                int blogsPR = 3;
                int count = 0;

                LiteralControl blogContainer = new LiteralControl();
                blogContainer.Text = "<div class = 'blog-container'>";

                string query = "select BlogTable.BID, BlogTable.Btitle, BlogTable.Bcontent, BlogTable.BImage," +
                    " UserTable.username As Uname, UserTable.image As UImage, BlogTable.BDate from BlogTable" +
                    " Inner Join UserTable On BlogTable.UID = UserTable.Id where UID = '" + Convert.ToInt32(Session["Uid"]) + "' order by BDate DESC";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (count % blogsPR == 0)
                    {
                        if (count > 0)
                        {
                            blogContainer.Text += "</div>";
                        }
                        blogContainer.Text += "<div class = 'blog-row'>";
                    }

                    string BlogID = reader["BID"].ToString();
                    string title = reader["Btitle"].ToString();
                    string content = reader["Bcontent"].ToString();
                    string Image = reader["BImage"].ToString();
                    string Uname = reader["Uname"].ToString();
                    string UImage = reader["UImage"].ToString();
                    string BDate = Convert.ToDateTime(reader["BDate"]).ToString("MM/dd/yyyy hh:mm:tt");

                    blogContainer.Text += $@"
                    <div class='blog-box'>
                    <a href = '../User/EditBlog.aspx?BID={BlogID}' class='decor'>
                       <div class='blog-img'>
                        <img src='{ResolveUrl(Image)}'  width='100%' />
                        </div>
                        <div class='blog-text'>
                        <div class='DA'>
                        <div class='profile-picture'>
                        <img src='{ResolveUrl(UImage)}'/> 
                        </div>
                        {BDate} | {Uname}
                        </div>          
                        <br/>
                        <div class='T'>
                        {title}
                        </div>
                        <br/>
                        <div class='C'>
                        {content}
                        </div>
                        </div>
                    </a>
                    </div>
                    ";

                    count++;
                }
                blogContainer.Text += "</div>";

                reader.Close();
                con.Close();

                BlogDisplay.Controls.Clear();
                BlogDisplay.Controls.Add(blogContainer);
            }
            catch (Exception ex)
            {
                LiteralControl errorMessage = new LiteralControl($"<p>Error: {ex.Message}</p>");
                BlogDisplay.Controls.Add(errorMessage);
            }

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
            Response.Redirect("~/All/CreateBlog.aspx");
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