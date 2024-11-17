using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BCrypt.Net;

namespace Assignment
{
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string userEnteredPassword = password.Text;
            string storedHashedPassword = null;

            SqlCommand cmdP = new SqlCommand("select password from userTable where username = '" + username.Text +
                "'", con);
            var countP = cmdP.ExecuteScalar();
            if (countP != null)
            {
                storedHashedPassword = countP.ToString();

                if (storedHashedPassword != null)
                {
                    SqlCommand Sql = new SqlCommand("select count(*) from UserTable where username = '"
                     + username.Text + "'", con);
                    int count = Convert.ToInt32(Sql.ExecuteScalar().ToString());

                    if (count > 0)
                    {
                        SqlCommand cmdType = new SqlCommand("select Id, image, username, usertype from UserTable where " +
                            "username = '" + username.Text + "'", con);
                        SqlDataReader dr = cmdType.ExecuteReader();

                        string type = "";
                        string name = "";
                        string ID = "";
                        string img = "";

                        if (dr.Read())
                        {
                            type = dr["usertype"].ToString().Trim();
                            name = dr["username"].ToString().Trim();
                            ID = dr["Id"].ToString().Trim();
                            img = dr["image"].ToString().Trim();

                            Session["username"] = name;
                            Session["Uid"] = ID;
                            Session["usertype"] = type;
                            Session["image"] = img;

                            Response.Redirect("~/All/Home Page.aspx");

                        }
                        else
                        {
                            errMsg.Visible = true;
                            errMsg.ForeColor = System.Drawing.Color.Red;
                            errMsg.Text = "Username and Password incorrect!";
                            username.Text = string.Empty;
                            password.Text = string.Empty;
                            return;
                        }
                        con.Close();
                    }
                }
            }  
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Visitor/Register(User).aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/All/ForgetPassword.aspx");
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Visitor/Home Page(Visitor).aspx");
        }
    }
}