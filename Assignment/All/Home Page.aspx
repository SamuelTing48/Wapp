<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home Page.aspx.cs" Inherits="Assignment.Home_Page" %>

<!DOCTYPE html>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Home Page</title>
<link href="HF.css" rel="stylesheet" />
<style>
    .welcome{
        text-align:center;
        color:white;
        background-image:url('../back1.jpg');
        height:300px;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        text-align: center;
    }
    .content{

    }
    .slideshow-container {
        max-width: 1000px;
        margin: auto;
        margin-top:0px;
        position:relative;
    }
 
    .mySlides {
        display: none;
        width: 1000px;
    }
 
    img {
        width: 1000px;
        height: 500px;
    }
 
    /* Style for the navigation dots */
    .dot {
        height: 15px;
        width: 15px;
        margin: 10px;
        background-color: #bbb;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
        cursor: pointer;
    }
 
    .active, .dot:hover {
        background-color: #717171;
    }
    /* Style for navigation arrows */
    .prev, .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        padding: 16px;
        margin-top: -22px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
        user-select: none;
    }
 
    .prev {
        left: 0;
        border-radius: 3px 0 0 3px;
    }
 
    .next {
        right: 0;
        border-radius: 0 3px 3px 0;
    }
 
    /* On hover, add a black background color with a little bit see-through */
    .prev:hover, .next:hover {
        background-color: rgba(0,0,0,0.8);
    }
    /* Caption text */
	.text {
		color: peachpuff;
		font-size: 50px;
		padding: 20px 0px;
		position: absolute;
		bottom: 44px;
		width: 100%;
		text-align: center;
		background-color: rgba(77, 67, 32, 0.8); /* Add a low opacity background color */
	}

    .auto-style1 {
        max-width: 1000px;
        position: relative;
        margin-left: auto;
        margin-right: auto;
        margin-bottom: auto;
    }
    .goals-section {
    background-color: #4CAF50; /* Green background */
    color: white;
    padding: 40px;
    text-align: center;
    }

    .goals-section h2 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .goals-section p {
        font-size: 20px;
        line-height: 1.5;
        max-width: 800px;
        margin: 0 auto;
    }

    /* Full-width Image */
    .goal-image img {
        width: 100%;
        height: auto;
        display: block;
        margin-top: 0;
    }
    .values-section {
        background-color: #3E8E41; /* Darker green background */
        color: white;
        padding: 40px;
        text-align: center;
    }

    .values-section h2 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .values-section p {
        font-size: 20px;
        line-height: 1.5;
        max-width: 800px;
        margin: 0 auto;
    }
    .value-image img {
    width: 100%;
    height: auto;
    display: block;
    margin-top: 0;
    }
    .join-section {
        background-color: #2E7D32; /* Darker green background */
        color: white;
        padding: 50px;
        text-align: center;
    }

    .join-section h2 {
        font-size: 36px;
        margin-bottom: 20px;
    }

    .join-section p {
        font-size: 20px;
        line-height: 1.5;
        max-width: 800px;
        margin: 0 auto 30px;
    }

    /* ASP.NET Button Styling */
    .join-button {
        background-color: #FFEB3B; /* Yellow button for contrast */
        color: #2E7D32;
        padding: 15px 30px;
        font-size: 18px;
        font-weight: bold;
        border: none;
        border-radius: 5px;
        text-decoration: none;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .join-button:hover {
        background-color: #FFD600; /* Darker yellow on hover */
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
<div class="welcome">
<h1>Welcome</h1>
<p>🌱 Welcome to Your Green Journey! 🌱</p><p>Hello and welcome to our community of plant enthusiasts, where budding gardeners and seasoned green thumbs alike can grow together! Whether you’re here to learn the basics of planting, explore different seeds, or connect with fellow nature lovers, you’re in the right place. Dive into our resources, discover expert tips, and share your own gardening stories on our blog. Let's nurture a greener world, one plant at a time! Happy planting!</p>
</div>
<div class="content">
<h1 style="padding-left:50px">Popular Activities</h1>
<br/><br/>
<div class="auto-style1">
<!-- Automatic slideshow -->
<div class="mySlides fade">
<asp:LinkButton ID="LearnLink" runat="server" OnClick="LearnLink_Click">
        <img alt="event" src="../back2.jpg" />
        <div class="text">Learn</div>
    </asp:LinkButton>
</div>

                    <div class="mySlides fade">
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/All/ContactUs.aspx" >
        <img alt="tart" src="../back4.jpg" />
        <div class="text">Contact Us</div>
    </asp:HyperLink>
</div>
 
                <div class="mySlides fade">
    <asp:HyperLink ID="BlogLink" runat="server" NavigateUrl="~/All/BrowseBlog.aspx" >
        <img alt="tart" src="../back3.jpeg" />
        <div class="text">Blog</div>
    </asp:HyperLink>
</div>
 

 
                <!-- Manual controls (dots) -->
<div style="text-align:center">
<span class="dot" onclick="currentSlide(1)"></span>
<span class="dot" onclick="currentSlide(2)"></span>
<span class="dot" onclick="currentSlide(3)"></span>
</div>
 
                <!-- Navigation arrows -->
<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
 
            <script type="text/javascript">
                var slideIndex = 1;
                showSlides(slideIndex);
 
                function plusSlides(n) {
                    showSlides(slideIndex += n);
                }
 
                function currentSlide(n) {
                    showSlides(slideIndex = n);
                }
 
                function showSlides(n) {
                    var i;
                    var slides = document.getElementsByClassName("mySlides");
                    var dots = document.getElementsByClassName("dot");
                    if (n > slides.length) { slideIndex = 1 }
                    if (n < 1) { slideIndex = slides.length }
                    for (i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";
                    }
                    for (i = 0; i<dots.length ; i++) {
                        dots[i].className = dots[i].className.replace(" active", "");
                    }
                    slides[slideIndex - 1].style.display = "block";
                    dots[slideIndex - 1].className += " active";
	                }
	                 // Automatic slideshow
	                setInterval(function() {
	                    plusSlides(1);
	                }, 5000); // Change the interval (in milliseconds) as needed
</script>
 
        <div class="goals-section">
    <h2>Our Goal</h2>
    <p>At SproutSpace, our mission is to inspire and support everyone on their journey to grow a greener world. From planting knowledge to community connections, we're here to nurture your passion for nature, one seed at a time!</p>
</div>
<div class="goal-image">
    <img src="../benefit.jpg" alt="Greenery" />
</div>
    <div class="values-section">
    <h2>Why Choose Us?</h2>
    <p>SproutSpace isn’t just about planting; it’s about cultivating a love for nature and building a supportive community. We bring you expert tips, eco-friendly advice, and a space to connect with fellow plant enthusiasts. Together, we’re growing towards a greener future!</p>
</div>
    <div class="value-image">
    <img src="../community.jpg" alt="Community of Gardeners" />
</div>
<div class="join-section">
    <h2>Ready to Grow With Us?</h2>
    <p>Join SproutSpace and be part of a thriving community that shares your passion for nature! Sign up, explore our tutorials, contribute to the blog, or participate in upcoming events. Let’s grow, learn, and connect together!</p>
    <asp:Button ID="JoinButton" runat="server" Text="Join Now" CssClass="join-button" PostBackUrl="~/All/JoinUs.aspx" />
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
