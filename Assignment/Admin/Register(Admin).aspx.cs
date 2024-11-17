using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.WebRequestMethods;

namespace Assignment.Admin
{
    public partial class Register_Admin_ : System.Web.UI.Page
    {
        String randomCode;
        public static String to;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "select count(*) from UserTable where username = '" + username.Text +
                    "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (check > 0)
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Username has been taken!";
                }
                else
                {
                    string query1 = "insert into UserTable (username, password, email, usertype) values" +
                    "(@username, @password, @email, @usertype)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);

                    cmd1.Parameters.AddWithValue("@username", username.Text);
                    cmd1.Parameters.AddWithValue("@password", password.Text);
                    cmd1.Parameters.AddWithValue("@email", Email.Text);
                    cmd1.Parameters.AddWithValue("@usertype", usertype.Text);
                    cmd1.ExecuteNonQuery();
                    Response.Redirect("~/All/Login Page.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Registration not sucessful" + ex.ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string queryE = "select count(*) from UserTable where email = '" + Email.Text +
                   "'";
            SqlCommand cmdE = new SqlCommand(queryE, con);
            int checkE = Convert.ToInt32(cmdE.ExecuteScalar().ToString());

            if (checkE > 0)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Email has been used!";
            }
            else
            {
                String from, pass, messageBody;
                Random rand = new Random();
                randomCode = (rand.Next(999999)).ToString();

                Session["OTP"] = randomCode;

                MailMessage message = new MailMessage();
                to = (Email.Text).ToString();
                from = "zzy040521@gmail.com";
                pass = "ifdu tmfy vpkk efne";
                messageBody = "Your OTP code is " + randomCode;
                message.To.Add(to);
                message.From = new MailAddress(from);
                message.Body = messageBody;
                message.Subject = "Password Reseting Code";
                SmtpClient smtp = new SmtpClient("smtp.gmail.com");
                smtp.EnableSsl = true;
                smtp.Port = 587;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(from, pass);
                try
                {
                    smtp.Send(message);
                    OTPVerify.Text = "Code Send Successfully!";
                    OTPVerify.Visible = true;
                }
                catch (Exception ex)
                {
                    OTPVerify.Text = ex.Message;
                }
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string storeOTP = Session["OTP"].ToString();

            if ((OTP.Text).ToString() == storeOTP)
            {
                to = Email.Text;
                OTPVerify.Text = "OTP Code Correct!";
                OTPVerify.Visible = true;
                Button1.Enabled = true;
            }
            else
            {
                OTPVerify.Text = "Invalid OTP!";
                OTPVerify.Visible = true;
                Button1.Enabled = false;
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/All/Login Page.aspx");
        }
    }
}