<!DOCTYPE html>
<html lang="en-US">

<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<!-- SEO -->
<title>Vishwa Home Page</title>
<meta name="description" content="" />
<meta name="robots" content="" />
<meta name="referrer" content="always" />

<!-- Social & Open Graph -->
<meta property="og:title" content="" />
<meta property="og:description" content="" />
<meta property="og:image" content="">
<!-- include your hosted image full URL -->
<meta property="og:url" content="" />
<meta name="twitter:title" content="">
<meta name="twitter:description" content="" />
<meta name="twitter:image" content="" />
<!-- include your hosted image full URL -->
<meta name="twitter:card" content="" />
<meta name="twitter:site" content="" />
<meta name="twitter:creator" content="" />

<!-- Favicon -->
<link rel="icon" type="image/png" href="resources/img/favicon.png"
	sizes="32x32">

<!-- Styles -->
<link rel='stylesheet' href='resources/css/split.css' type='text/css'
	media='screen' />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
var visitor = new Object();
visitor.visitorIP = "0.0.0.0";
visitor.visitorDevice = "Mobile";
visitor.visitorLocationLattitude = "Mobile";
visitor.visitorLocationLongitude = "Mobile";
visitor.visitorBrowser ="visitorBrowser";
visitor.visitorVisitingTime ="visitorVisitingTime";
visitor.visitorModule ="HomePage";
$.ajax({
    url: "saveVisitorInfo",
    type: 'POST',
    dataType: 'json',
    data: JSON.stringify(visitor),
    contentType: 'application/json',
    mimeType: 'application/json',

    success: function (data) {
       alert("successful");
    },
    error:function(data,status,er) {
        alert("error: "+data+" status: "+status+" er:"+er);
    }
});

</script>

</head>

<body id="fullsingle" class="page-template-page-fullsingle-split">

	<div class="fs-split">

		<!-- Self-Hosted Video Side -->
		<div class="split-image split-video">
			<div class="video-wrap">
				<div class="video-container">
					<iframe class="video-content"
						src="https://www.youtube.com/embed/dk9uNWPP7EA?rel=0&amp;controls=0&amp;showinfo=0&amp;autoplay=1&amp;loop=1&amp;mute=1&playlist=dk9uNWPP7EA"
						frameborder="0" allowfullscreen></iframe>
				</div>
			</div>
		</div>

		<!-- Content Side -->
		<div class="split-content">

			<div class="split-content-vertically-center">

				<div class="split-intro">

					<h1>Vishwa Kumar Deepak</h1>

					<span class="tagline">Developer. Traveller. Foodie.</span>

				</div>

				<div class="split-bio">

					<p>Born and brought up on defense campus.Traveling new places,
						meeting new people of different belief, religion and taste is
						something I grew up with. Explore my blog on <a href="#">Travel</a>,
						 <a href="#">Food</a>, <a href="#">Life</a>, and <a href="#">Tech</a>
						</p>

				</div>

				<div class="split-lists">

					<div class="split-list">

						<h3>Blog</h3>

						<ul>
							<li><a href="#">Travel</a></li>
							<li><a href="#">Food</a></li>
							<li><a href="#">Life</a></li>
							<li><a href="#">Tech</a></li>
						</ul>

					</div>

					<div class="split-list">

						<h3>Social</h3>

						<ul>
						    <li><a href="#">Linkedin</a></li>
							<li><a href="#">Facebook</a></li>
							<li><a href="#">Instagram</a></li>
							<li><a href="#">Twitter</a></li>
						</ul>

					</div>

					<div class="split-list">
						<h3>Network</h3>
						<ul>
							<li><a href="vishwaResume"  target="_blank">Vishwa Resume</a></li>
							<li><a href="#"  target="_blank">Link Two</a></li>
							<li><a href="#"  target="_blank">Link Three</a></li>
							<li><a href="#"  target="_blank">Link Three</a></li>
						</ul>
					</div>
				</div>

				<div class="split-credit">

					<p>
						&copy;2017 <a href="#">Vishwa Kumar Deepak</a>
					</p>


				</div>

			</div>

		</div>

	</div>

</body>
</html>