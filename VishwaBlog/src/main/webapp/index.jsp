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
<meta property="og:title" content="Vishwa Kumar Deepak " />
<meta property="og:description" content="Vishwa Blog" />
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
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>
var visitor = new Object();
visitor.visitorIP = myIP();
visitor.visitorDevice = "sizeAvailW:"+screen.availWidth+"sizeAvailH:"+screen.availHeight;
visitor.visitorBrowser =navigator.appVersion;
visitor.visitorVisitingTime =new Date();
visitor.visitorModule ="HomePage";
visitor.visitorOtherDetail=(new Date()).getTimezoneOffset()/60;

function myIP() {
    if (window.XMLHttpRequest) xmlhttp = new XMLHttpRequest();
    else xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    xmlhttp.open("GET","http://api.hostip.info/get_html.php",false);
    xmlhttp.send();

    hostipInfo = xmlhttp.responseText.split("\n");

    for (i=0; hostipInfo.length >= i; i++) {
        ipAddress = hostipInfo[i].split(":");
        if ( ipAddress[0] == "IP" ) return ipAddress[1];
    }

    return false;
}
(function getLocation() {
    if(navigator.geolocation) {
navigator.geolocation.getCurrentPosition(geoSuccess, geoError);
        } else {
            console.log("Geolocation is not supported by this browser.");
        }
    })();
    
function geoSuccess(position) {
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    console.log("lat:" + lat + " lng:" + lng);
}function geoError() {
    console.log("Geolocation failed.");
}
function GetAddressByLatLong(lat,lng) {
    var latlng = new google.maps.LatLng(lat, lng);
    var geocoder = geocoder = new google.maps.Geocoder();
    geocoder.geocode({ 'latLng': latlng }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            if (results[1]) {
                alert("Location: " + results[1].formatted_address);
            }
        }
    });
}
function geoSuccess(position) {
    var lat = position.coords.latitude;
    var lng = position.coords.longitude;
    visitor.visitorLocationLongitude=lng;
    visitor.visitorLocationLattitude=lat;
    GetAddressByLatLong(lat,lng);
    console.log("lat:" + lat + " lng:" + lng);
    
    console.log(visitor)
    $.ajax({
        url: "saveVisitorInfo",
        type: 'POST',
        dataType: 'json',
        data: JSON.stringify(visitor),
        contentType: 'application/json',
        mimeType: 'application/json',

        success: function (data) {
           console.log("vistor info saved successfully");
        },
        error:function(data,status,er) {
            alert("error: "+data+" status: "+status+" er:"+er);
        }
    });
}

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