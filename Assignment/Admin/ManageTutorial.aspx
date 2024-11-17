<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTutorial.aspx.cs" Inherits="Assignment.Admin.ManageTutorial" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Tutorial</title>
<link href="../All/HF.css" rel="stylesheet" />
<style>
  .content{
  height:1000px;
  
}
.tutorial-container{
  display:flex;
  justify-content:center;
  align-items:center;
  margin:20px 0;
  flex-wrap:wrap;
  max-width: 100%;
  }
  .tutorial-box{
      flex: 1 1 30%;
      width:30%;
      max-width:400px;
      min-width: 300px;
      background-color:white;
      border:1px solid #ececec;
      margin: 100px;
  }
  .tutorial-img{
      width:100%;
      height:auto;
  }
  .tutorial-img img{
      width:100%;
      height:100%;
      object-fit:cover;
      object-position:center;
  }
  .tutorial-text{
       display: -webkit-box;
       -webkit-line-clamp: 5; /* Number of lines to show */
       -webkit-box-orient: vertical;
       overflow: hidden;
       text-overflow: ellipsis;
  }
  .tutorial-row {
    justify-content:flex-start;
    display: flex;
    flex-wrap: wrap;
    width: 100%;
    margin-bottom: 20px;
}
    .auto-style1 {
        margin-left: 1040px;
    }
    .DA{
        color:darkgray;
        font-size:0.9rem;
    }
    .T{
        color:black;
        font-size:1.2rem;
    }
    .C{
        color:black;
        font-size:1.0rem;
    }
    .decor{
        text-decoration:none;
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
            <h1>Manage SproutSpace Tutorial</h1>
          <div class="auto-style1">
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#00CC00" BorderColor="#006600" BorderStyle="Solid" BorderWidth="3px" Font-Overline="False" Font-Size="Large" ForeColor="White" OnClick="LinkButton2_Click">Create New Tutorial</asp:LinkButton>
        </div>
<div class="content">

<asp:PlaceHolder ID="TutorialDisplay" runat="server"></asp:PlaceHolder>

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
