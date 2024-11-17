using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment.Visitor
{
    public partial class PlayTutorial_Visitor_ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
    }
}