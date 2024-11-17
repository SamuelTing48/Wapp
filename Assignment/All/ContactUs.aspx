<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Assignment.All.Contact_us" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Contact Us</title>
<link href="HF.css" rel="stylesheet" />
<style>
    .content {
        padding: 20px;
    }

    .banner {
        width: 100%;                                        /* feel free to change the image & the format, idk if this is good */
        height: 300px;
        background-image: url('../plant.jpeg'); /* Change Banner Image Here */
        background-size: cover;
        background-position: center;
        overflow: hidden;
    }
    .txtcontent{
        width:50%;
        margin-bottom:20px;
        border:none;
        border-bottom: 2px solid #00640045;
        outline:none;
        height:40px;
        color:#000000;
        font-size:16px;
        background-color:transparent;
    }
    .feedback{
        border-color: forestgreen;
        border-style: solid;
        padding:20px;
    }
    .Createbutton{
        background-color:#00CC00;
        border-color:#00CC00;
        width:130px;
        height:50px;
        right:300px;
        color:White;
    }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <h1>SproutSpace</h1>
            <nav class="nav-links">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/All/Home Page.aspx" Font-Overline="False" ForeColor="White">Home</asp:HyperLink>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1">Learn</asp:LinkButton>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/All/BrowseBlog.aspx" Font-Overline="False" ForeColor="White">Blog</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/All/AboutUs.aspx" Font-Overline="False" ForeColor="White">About Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/All/JoinUs.aspx" Font-Overline="False" ForeColor="White">Join Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/All/ContactUs.aspx" Font-Overline="False" ForeColor="White">Contact Us</asp:HyperLink>
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/All/Profile.aspx" Font-Overline="False" ForeColor="White">Profile</asp:HyperLink>
            </nav>
        </header>
        <div class="content">
            <!-- Content for the page Should be below here -->
            <h1>
                Contact Us
            </h1>
            <div class="banner"> <!-- banner image section-->
            </div>
            
            <h2 style="text-decoration:underline" >
                Contact Infomation:
            </h2>
            <!-- These are not real they are samples -->
            <h3 style="color:darkslategrey">Email: SproutSpace@greenhill.com</h3><h3 style="color:darkslategrey" >Contact Number: 011-4345-3322</h3><h3 style="color:darkslategrey">Map Location: Asia Pacific University of Technology & Innovation (APU) </h3>
            <!-- Embed Google maps -->
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3984.1466075748303!2d101.69798647581344!3d3.0554110537199857!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc4abb795025d9%3A0x1c37182a714ba968!2sAsia%20Pacific%20University%20of%20Technology%20%26%20Innovation%20(APU)!5e0!3m2!1sen!2smy!4v1729379436448!5m2!1sen!2smy" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>


             <!-- Feedback form -->
             <h2 style="text-decoration:underline" >
                 Feedback Form:
             </h2>

            </div>
        <div class="feedback">
            <label for="name">Name:</label><br>
            <asp:TextBox ID="Username" runat="server" class="txtcontent" width="30%"></asp:TextBox>
        <br />

           <label for="topic">Topic:</label><br>
            <asp:TextBox ID="topic" runat="server" class="txtcontent" width="40%"></asp:TextBox>
        <br/>

            <label for="content">Content:</label><br>
            <asp:TextBox ID="content" runat="server" class="txtcontent" width="80%"></asp:TextBox>
        <br/>
            <asp:Label ID="Verify" runat="server" Font-Size="Small" Visible="False"></asp:Label>
            <br />

            <asp:Button ID="Button1" runat="server" Text="Submit" class="Createbutton" OnClick="Button1_Click"/>
            </div>

<div class="footer">
<table border="0px" cellspacing="20px">
<tr>
<th style="font-size:30px">General Information</th><th style="font-size:30px">Connect Us</th>
</tr>
<tr>
<td style="font-size:20px"><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/All/Home Page.aspx" Font-Overline="False" ForeColor="White">Home</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/All/AboutUs.aspx" Font-Overline="False" ForeColor="White">About Us</asp:HyperLink></td>
</tr>
<tr>
<td style="font-size:20px"><asp:LinkButton ID="LinkButton3" runat="server" ForeColor="White" Font-Overline="false" OnClick="LinkButton3_Click" >Learn</asp:LinkButton></td><td class="ft"><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/All/JoinUs.aspx" Font-Overline="False" ForeColor="White">Join Us</asp:HyperLink></td>
</tr>
<tr>
<td class="ft"><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/All/BrowseBlog.aspx" Font-Overline="False" ForeColor="White">Blog</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/All/ContactUs.aspx" Font-Overline="False" ForeColor="White">Contact Us</asp:HyperLink></td>
</tr>
</table>
</div>
    </form>
</body>
</html>
