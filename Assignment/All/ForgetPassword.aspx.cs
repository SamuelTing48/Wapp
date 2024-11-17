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

namespace Assignment.All
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        String randomCode;
        public static String to;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string queryE = "select count(*) from UserTable where email = '" + email.Text +
                   "'";
            SqlCommand cmdE = new SqlCommand(queryE, con);
            int checkE = Convert.ToInt32(cmdE.ExecuteScalar().ToString());

            if (checkE > 0)
            {
                String from, pass, messageBody;
                Random rand = new Random();
                randomCode = (rand.Next(999999)).ToString();

                Session["OTP"] = randomCode;

                MailMessage message = new MailMessage();
                to = (email.Text).ToString();
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
            else
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Email can't found";
            }
            con.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string storeOTP = Session["OTP"].ToString();

            if ((OTP.Text).ToString() == storeOTP)
            {
                to = email.Text;
                OTPVerify.Text = "OTP Code Correct!";
                OTPVerify.Visible = true;
                Button1.Visible = true;
                npwd.Visible = true;
                cpwd.Visible = true;
            }
            else
            {
                OTPVerify.Text = "Invalid OTP!";
                OTPVerify.Visible = true;
                Button1.Visible = false;
                npwd.Visible = false;
                cpwd.Visible = false;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/All/Login Page.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();

            string updateQuery = "UPDATE UserTable SET password = @password where email = '" + email.Text + "'";
            SqlCommand cmd = new SqlCommand(updateQuery, con);

            cmd.Parameters.AddWithValue("@password", npwd.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("~/All/Login Page.aspx");

            con.Close();
        }
    }
}