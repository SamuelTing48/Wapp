<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Assignment.Admin.Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Admin</title>
<link href="../All/HF.css" rel="stylesheet" />
    <style>
    .content {
        height: auto; 
        padding: 20px;
    }

    .profile-container {
        display: flex;
        align-items: flex-start;
        max-width: 1000px;
        margin: 20px 0;
    }

    .profile-picture {
        width: 120px;
        height: 120px;
        border-radius: 50%;
        overflow: hidden;
        border: 5px solid #4CAF50;
        background-color: white;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 10px;
        margin-right: 20px;
    }

    .profile-picture img {
        width: 100%;
        height: auto;
    }

    .edit-image {
        margin-top: 10px;
        padding: 5px 10px;
        background-color: dodgerblue; 
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .edit-image:hover {
        background-color: #1976D2;
    }

    .profile-info {
        flex: 1;
        background-color: lightgreen; 
        border-radius: 10px;
        padding: 20px;
        margin-right: 20px;
        width:500px
    }

    .profile-info h2 {
        margin: 0;
        font-size: 24px;
        color: #333;
    }

    .profile-info p {
        margin: 5px 0;
        color: #555;
    }

    .edit-profile {
        padding: 5px 10px;
        background-color: dodgerblue;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        margin-top: 10px;
    }

    .edit-profile:hover {
        background-color: #1976D2;
    }

    .thumbnail-container {
        width: 400px; 
        background-color: forestgreen;
        border-radius: 10px;
        padding: 10px;
        display: flex; 
        flex-direction: column;
        align-items: center;
    }

    .thumbnail {
        width: 100%;
        height: 100px;
        border-radius: 5px;
        background-color: dimgray; /* rememeber to change this to thumbnail pic */
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 10px;
        position: relative;
    }

    .manage-button {
        padding: 5px 10px;
        background-color: dodgerblue;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        position: absolute;
        bottom: 10px; 
    }

    .manage-button:hover {
        background-color: #1976D2;
    }

    .logout-container {
        margin-top: 20px;
        text-align: left;
    }

    .logout-button {
        padding: 10px 20px;
        background-color: forestgreen;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s;
        display: inline-block;
    }

    .logout-button:hover {
        background-color: #388E3C;
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
            <h1>Welcome, 
                <asp:Label ID="uname" runat="server"></asp:Label>
            </h1>
            <div class="profile-container"> 
                <div class="profile-picture">
                    &nbsp;<asp:Image ID="Image1" runat="server" />
                </div> 
                <div class="profile-info">
                    <h2><asp:Label ID="Username" runat="server"></asp:Label>
                    </h2>
                    <p><asp:Label ID="email" runat="server"></asp:Label>
                    </p>
                    <p><asp:Label ID="descrip" runat="server"></asp:Label>
                    </p>
                    <asp:Button ID="Button4" runat="server" BackColor="DodgerBlue" ForeColor="White" Text="Edit Profile" Width="114px" OnClick="Button4_Click" />
                </div>
                <div class="thumbnail-container">
                    <div class="thumbnail">Blogs   
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Manage" BackColor="DodgerBlue" BorderColor="White" ForeColor="White" OnClick="Button1_Click" Width="100px" />
                </div>
            </div>
            <div class="logout-container">
                <p>Would you like to log out?</p>
                <asp:Button ID="Button3" runat="server" BackColor="ForestGreen" Font-Size="Small" ForeColor="White" Height="40px" Text="Log Out" Width="106px" OnClick="Button3_Click" />
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
<td style="font-size:20px"><asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" Font-overline="false" OnClick="LinkButton2_Click">Learn</asp:LinkButton></td><td class="ft"><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/All/JoinUs.aspx" Font-Overline="False" ForeColor="White">Join Us</asp:HyperLink></td>
</tr>
<tr>
<td class="ft"><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/All/BrowseBlog.aspx" Font-Overline="False" ForeColor="White">Blog</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/All/ContactUs.aspx" Font-Overline="False" ForeColor="White">Contact Us</asp:HyperLink></td>
</tr>
</table>
</div>
    </form>
</body>
</html>