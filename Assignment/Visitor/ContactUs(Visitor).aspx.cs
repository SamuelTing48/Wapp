using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.Visitor
{
    public partial class ContactUs_Visitor_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string from = "zzy040521@gmail.com";
            string pass = "ifdu tmfy vpkk efne";
            string SSowner = "zzy040521@gmail.com";

            MailMessage message = new MailMessage();
            message.To.Add(SSowner);
            message.From = new MailAddress(from);

            string username = Username.Text.ToString();
            string Feedback = content.Text.ToString();
            string Topic = topic.Text.ToString();

            string messagebody = $"Topic: {Topic} \n Feedback: {Feedback}";
            message.Body = messagebody;
            message.Subject = "User Feedback from SproutSpace";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.EnableSsl = true;
            smtp.Port = 587;
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(from, pass);
            try
            {
                smtp.Send(message);
                Verify.Text = "Thanks for your Feedback!";
                Verify.Visible = true;
                Username.Text = "";
                content.Text = "";
                topic.Text = "";
            }
            catch (Exception ex)
            {
                Verify.Text = ex.Message;
            }
        }
    }
}