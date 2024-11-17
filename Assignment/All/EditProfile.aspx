<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="Assignment.All.EditProfile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Edit Profile</title>
<link href="HF.css" rel="stylesheet" />
<style>
        .profile-container {
            border: 2px solid #ccc; /* Border color and width */
            padding: 20px; /* Spacing inside the container */
            margin: 20px auto; /* Center the container and add vertical spacing */
            width: 80%; /* Set the width of the container */
            border-radius: 8px; /* Optional: rounded corners */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Optional: shadow effect */
            background-color: #f9f9f9; /* Optional: background color */
        }
        .profile-img{
            justify-content:center;
            align-items:center;
            align-content:center;
            display:flex;
            width:100%;
            height:25%;
        }
        .profile-table {
            width: 100%;
            table-layout: fixed; /* Ensures equal width for each cell */
            border-collapse: collapse; /* Removes default spacing between cells */
        }
        .profile-table td {
            padding: 10px; /* Adds equal spacing inside each cell */
            text-align: center; /* Centers content in each cell */
        }
        .profile-table td:nth-child(1) {
            width: 20%; /* Adjust as needed for label width */
        }
        .profile-table td:nth-child(2) {
            width: 80%; /* Adjust as needed for textbox width */
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
    .auto-style1 {
        float: right;
    }
    .auto-style2 {
        height: 82px;
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
<h1 style="text-align:center">Edit Profile</h1>
<div class="profile-container">
<div class="profile-img">
    </div>
<br />
<asp:FileUpload ID="FileUpload1" runat="server" />
<br />
<br />

<table class="profile-table">
<tr>
<td><asp:Label ID="Label1" runat="server" Text="Name"></asp:Label></td><td style="text-align:left"><asp:TextBox ID="name" runat="server" Width="30%" CssClass="txtcontent"></asp:TextBox></td>
</tr>
<tr>
<td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td><td class="auto-style2" style="text-align:left"><asp:TextBox ID="email" runat="server" Width="30%" CssClass="txtcontent"></asp:TextBox></td>
</tr>
<tr>
<td><asp:Label ID="Label3" runat="server" Text="Description"></asp:Label></td><td style="text-align:left"><asp:TextBox ID="descrip" runat="server" Width="100%" CssClass="txtcontent" placeholder="Type anything here..."></asp:TextBox></td>
</tr>
<tr>
<td>&nbsp</td><td><asp:Button ID="Button3" runat="server" Text="Update" CssClass="auto-style1" Height="51px" Width="150px" OnClick="Button3_Click"/></td>
</tr>
</table>
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