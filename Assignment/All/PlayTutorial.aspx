<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlayTutorial.aspx.cs" Inherits="Assignment.Admin.PlayTutorial" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Blog</title>
<link href="HF.css" rel="stylesheet" />
<style>
        .cmt-container{
            width:100%;
            border:3px solid darkgreen;
            justify-content:center;
            align-items:center;
            align-content:center;
            padding-left:10px;
        }
        .cmt-box{
            background-color:white;
            margin:5px 0;
            padding: 10px;
        }
        .title{
            text-align:center;
            font-size:xx-large;
        }
        .img{
        justify-content:center;
        align-items:center;
        align-content:center;
        display:flex;
        }
        .img img {
        width: 60%;  /* Set the desired width */
        height: 50%; /* Set the desired height */
        object-fit: cover; /* Crop the image if it doesn't match the aspect ratio */
        }
        .DA{
            color:darkgray;
            font-size:0.9rem;
        }
        .C{
            color:black;
            font-size:1.0rem;
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
        .profile-picture {
            width: 80px;
            height: 80px;
            overflow: hidden;
            border: 2px solid #4CAF50;
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
        .Delete{
            justify-content:right;
            align-items:flex-end;
            align-content:flex-end;
            display:flex;
            color:red;
            padding-right:20px;
        }
        .content-table{
           width:100%;
           table-layout:fixed;
           border-collapse:collapse;
       }
       .content-table td{
           padding:10px;
           text-align:left;
       }
       .content-table td:nth-child(1){
           width:50%;
       }
       .content-table td:nth-child(2){
           width:50%;
       }
       .content-table img {
           width: 100%;
           height: auto;
           object-fit: contain;
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
<br />
<div class="title">
<asp:Label ID="title" runat="server" Text="Title"></asp:Label>
</div>
<br />
<div style="text-align:center">
<div class="profile-nd">   
<asp:Label ID="date" runat="server" Text="Date"></asp:Label>
</div> 
</div>
<br />
    <asp:LinkButton ID="LinkButton3" runat="server" class="Delete" OnClick="LinkButton3_Click">Delete</asp:LinkButton>
<br />
&nbsp;
<table class="content-table">
    <tr>
        <td><asp:Image ID="Image1" runat="server" /></td><td><asp:Label ID="content" runat="server" Text="Content"></asp:Label></td>
    </tr>
</table>

<div class="footer">
<table border="0px" cellspacing="20px">
<tr>
<th style="font-size:30px">General Information</th><th style="font-size:30px">Connect Us</th>
</tr>
<tr>
<td style="font-size:20px"><asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/All/Home Page.aspx" Font-Overline="False" ForeColor="White">Home</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/All/AboutUs.aspx" Font-Overline="False" ForeColor="White">About Us</asp:HyperLink></td>
</tr>
<tr>
<td style="font-size:20px">
<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="White" Font-Overline="false" OnClick="LinkButton2_Click">Learn</asp:LinkButton></td><td class="ft"><asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/All/JoinUs.aspx" Font-Overline="False" ForeColor="White">Join Us</asp:HyperLink></td>
</tr>
<tr>
<td class="ft"><asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/All/BrowseBlog.aspx" Font-Overline="False" ForeColor="White">Blog</asp:HyperLink></td><td class="ft"><asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/All/ContactUs.aspx" Font-Overline="False" ForeColor="White">Contact Us</asp:HyperLink></td>
</tr>
</table>
</div>
</form>
</body>
</html>
