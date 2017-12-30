<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.vishwa.pojo.LifeBlogPojo,java.util.ArrayList" %>
 
<!DOCTYPE HTML>
<html lang="en-US">
<head>
<title>Vishwa Life Blog</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Vishwa Life Blog" />
<meta name="keywords"
	content="Vishwa kumar Deepak,Vishwa, Vishu,vishwa blog" />
<meta name="author" content="vishwa" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="shortcut icon" href="resources/vishwaLifeBlogResources/images/favicon.png" />
<link
	href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CLibre+Baskerville:400,400italic,700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css"
	href='resources/vishwaLifeBlogResources/css/clear.css' />
<link rel="stylesheet" type="text/css"
	href='resources/vishwaLifeBlogResources/css/common.css' />
<link rel="stylesheet" type="text/css"
	href='resources/vishwaLifeBlogResources/css/font-awesome.min.css' />
<link rel="stylesheet" type="text/css"
	href='resources/vishwaLifeBlogResources/css/carouFredSel.css' />
<link rel="stylesheet" type="text/css"
	href='resources/vishwaLifeBlogResources/css/sm-clean.css' />
<link rel="stylesheet" type="text/css"
	href='resources/vishwaLifeBlogResources/css/style.css' />

<!--[if lt IE 9]>
                <script src="js/html5.js"></script>
        <![endif]-->

</head>
<body class="home blog">

	<!-- Preloader Gif -->
	<table class="doc-loader">
		<tbody>
			<tr>
				<td><img
					src="resources/vishwaLifeBlogResources/images/ajax-document-loader.gif"
					alt="Loading..."></td>
			</tr>
		</tbody>
	</table>

	<!-- Left Sidebar -->
	<div id="sidebar" class="sidebar">
		<div class="menu-left-part">
			<div class="search-holder">
				<label> <input type="search" class="search-field"
					placeholder="Type here to search..." value="" name="s"
					title="Search for:">
				</label>
			</div>
			<div class="site-info-holder">
				<h1 class="site-title">Vishwa Life Blog</h1>
				<p class="site-description">Sharing some of the life experiences</p>
			</div>
			<nav id="header-main-menu">
				<ul class="main-menu sm sm-clean">
					<li><a href="vishwaLifeBlog" class="current">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="scroll.html">Scroll</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</nav>
			<footer>
				<div class="footer-info">
					© 2018 SUPPABLOG HTML TEMPLATE. <br> CRAFTED WITH <i
						class="fa fa-heart"></i> BY <a href="https://colorlib.com">COLORLIB</a>.
				</div>
			</footer>
		</div>
		<div class="menu-right-part">
			<div class="logo-holder">
				<a href="index.html"> <img
					src="resources/vishwaLifeBlogResources//images/logo.png"
					alt="Suppablog WP">
				</a>
			</div>
			<div class="toggle-holder">
				<div id="toggle">
					<div class="menu-line"></div>
				</div>
			</div>
			<div class="social-holder">
				<div class="social-list">
					<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-youtube-play"></i></a> <a href="#"><i
						class="fa fa-facebook"></i></a> <a href="#"><i class="fa fa-vimeo"></i></a>
					<a href="#"><i class="fa fa-behance"></i></a> <a href="#"><i
						class="fa fa-rss"></i></a>
				</div>
			</div>
			<div class="fixed scroll-top">
				<i class="fa fa-caret-square-o-up" aria-hidden="true"></i>
			</div>
		</div>
		<div class="clear"></div>
	</div>
 <% ArrayList<LifeBlogPojo> lifeBlogArray=(ArrayList<LifeBlogPojo>)request.getAttribute("lifeBloglist"); 
  request.getSession().setAttribute("lifeBlogArray",lifeBlogArray);%>
	<!-- Home Content -->
	<div id="content" class="site-content">
		<div id="blog-wrapper">
			<div class="blog-holder center-relative">


				<article id="post-0" class="blog-item-holder featured-post">
					<div class="entry-content relative">
						<div class="content-1170 center-relative">
							<div class="cat-links">
								<ul>
									<li><a href="#">Crafting</a></li>
								</ul>
							</div>
							<div class="entry-date published">February 12, 2016</div>
							<h2 class="entry-title">
								<a href="vishwaLifeDetail"><%=lifeBlogArray.get(0).getTopic() %></a>
							</h2>
							<div class="excerpt">
								<%=lifeBlogArray.get(0).getContent() %>
								 <a
									class="read-more" href="single.html"></a>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</article>

				<%for(int i=1;i<lifeBlogArray.size();i++){ %>
				<article id="post-<%=i %>" class="blog-item-holder">
					<div class="entry-content relative">
						<div class="content-1170 center-relative">
							<h2 class="entry-title">
							 	
								<a href="vishwaLifeDetail?id=<%=i%>"><%=lifeBlogArray.get(i).getTopic() %> </a>
							</h2>
							<div class="cat-links">
								<ul>
									<li><a href="#"><%=lifeBlogArray.get(i).getTags() %></a></li>
								</ul>
							</div>
							<div class="entry-date published"><%=lifeBlogArray.get(i).getCreatedDate() %></div>
							<div class="clear"></div>
						</div>
					</div>
				</article>
				<%} %>
			</div>
			<div class="clear"></div>
			<div class="block load-more-holder">LOAD MORE ENTRIES</div>
		</div>

		<div class="featured-image-holder">
			<div class="featured-post-image"
				style="background-image: url(resources/vishwaLifeBlogResources/demo-images/featured-image.jpg)"></div>

		</div>
		<div class="clear"></div>
	</div>



	<!--Load JavaScript-->
	<script type="text/javascript"
		src="resources/vishwaLifeBlogResources/js/jquery.js"></script>
	<script type='text/javascript'
		src='resources/vishwaLifeBlogResources/js/imagesloaded.pkgd.js'></script>
	<script type='text/javascript'
		src='resources/vishwaLifeBlogResources/js/jquery.nicescroll.min.js'></script>
	<script type='text/javascript'
		src='resources/vishwaLifeBlogResources/js/jquery.smartmenus.min.js'></script>
	<script type='text/javascript'
		src='resources/vishwaLifeBlogResources/js/jquery.carouFredSel-6.0.0-packed.js'></script>
	<script type='text/javascript'
		src='resources/vishwaLifeBlogResources/js/jquery.mousewheel.min.js'></script>
	<script type='text/javascript'
		src='resources/vishwaLifeBlogResources/js/jquery.touchSwipe.min.js'></script>
	<script type='text/javascript'
		src='resources/vishwaLifeBlogResources/js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src='resources/vishwaLifeBlogResources/js/main.js'></script>
</body>
</html>
