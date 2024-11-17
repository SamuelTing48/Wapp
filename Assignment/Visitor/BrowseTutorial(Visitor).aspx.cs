﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.Visitor
{
    public partial class BrowseTutorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayTutorial();
        }

        private void DisplayTutorial()
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                int tutorialsPR = 2;
                int count = 0;

                LiteralControl tutorialContainer = new LiteralControl();
                tutorialContainer.Text = "<div class = 'tutorial-container'>";

                string query = "select TId, Title, Content, Image, Date from TutorialTable" +
                    " order by Date DESC";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    if (count % tutorialsPR == 0)
                    {
                        if (count > 0)
                        {
                            tutorialContainer.Text += "</div>";
                        }
                        tutorialContainer.Text += "<div class = 'tutorial-row'>";
                    }

                    string TID = reader["TId"].ToString();
                    string title = reader["Title"].ToString();
                    string content = reader["Content"].ToString();
                    string Image = reader["Image"].ToString();
                    string Date = Convert.ToDateTime(reader["Date"]).ToString("MM/dd/yyyy hh:mm:tt");

                    tutorialContainer.Text += $@"
                    <div class='tutorial-box'>
                    <a href = '../Visitor/PlayTutorial(Visitor).aspx?TId={TID}' class='decor'>
                       <div class='tutorial-img'>
                        <img src='{ResolveUrl(Image)}'  width='100%' />
                        </div>
                        <div class='tutorial-text'>
                        <div class='DA'>
                        {Date}
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
                    </div>";

                    count++;
                }
                tutorialContainer.Text += "</div>";

                reader.Close();
                con.Close();

                TutorialDisplay.Controls.Clear();
                TutorialDisplay.Controls.Add(tutorialContainer);
            }
            catch (Exception ex)
            {
                LiteralControl errorMessage = new LiteralControl($"<p>Error: {ex.Message}</p>");
                TutorialDisplay.Controls.Add(errorMessage);
            }

        }
    }
}