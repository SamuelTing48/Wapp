<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JoinUs.aspx.cs" Inherits="Assignment.Visitor.JoinUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Join Us</title>
<link href="../All/HF.css" rel="stylesheet" />
<style>
    .content {
        height: 1000px;
        padding: 20px;
    }

    .banner {
        width: 100%;                                        /* feel free to change the image format, idk if this is good */
        height: 400px;
        background-image: url('../Planting Crops.jpg'); /* Change Banner Image Here */
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
                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Learn</asp:LinkButton>
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
                Join Us
            </h1>
            <div class="banner"> <!-- banner image section-->
            </div>
            <h2>
                Hello welcome to SproutSpace, We would like you to join!
            </h2>
            <h2>
                Joining SproutSpace has benefits, which includes being able to comment and view comments in tutorials and blogs.
            </h2>
            <h2>
                Please  
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Click here</asp:LinkButton>
&nbsp;to register as a member <!-- remember to add link in href to sign in-->
            </h2>
            
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
