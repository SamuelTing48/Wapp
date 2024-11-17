<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Assignment.All.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link href="AboutMe.css" rel="stylesheet" />
<title>About Us</title>
<link href="HF.css" rel="stylesheet" />
<style>
    .content {
        height: 1000px;
        padding: 20px;
    }

    .banner {
        width: 100%;                                        /* feel free to change the image format, idk if this is good */
        height: 400px;
        background-image: url('../government.jpg'); /* Change Banner Image Here */
        background-size: cover;
        background-position: center;
        overflow: hidden;
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
                About Us

            </h1>
            <div class="banner">
                <!-- banner image -->
            </div>
            <h2>
                Hello welcome to SproutSpace a blog platform that can help beginners learn about planting and growing plants or flowers, we provide a blogs and tutorial about everything plant related.
            </h2>
            <h2>
                Credits to the founders of this website:
            </h2>
            <h2>
                Sean Thoo Han Ping (TP069253), Samuel Ting Li Wei (TP073486), Lee Jian Jie (TP073997), Zhen Yao (TP073706)
            </h2>
        </div>
        <!-- Profile Boxes -->
            <div class="profiles-container">
                <div class="profile-box">
                    <img src="../sean.jpg" class="profile-pic">
                    <h2 class="name">Sean Thoo Han Ping</h2>
                    <p class="description">TP069253</p>
                </div>
                <div class="profile-box">
                    <img src="../jianjie.jpg" class="profile-pic">
                    <h2 class="name">Lee Jian Jie</h2>
                    <p class="description">TP073997</p>
                </div>
                <div class="profile-box">
                    <img src="../zhenyao.jpg" class="profile-pic">
                    <h2 class="name">Hau Zhen Yao</h2>
                    <p class="description">TP073706</p>
                </div>
                <div class="profile-box">
                    <img src="../samuel.jpg" class="profile-pic">
                    <h2 class="name">Samuel Ting Li Wei</h2>
                    <p class="description">TP073486</p>
                </div>
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