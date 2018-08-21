<?php include '../../../../../ligar_db.php'; ?>
<?php include '../../../../Controladores/Restaurante/controlador.php'; ?>
<?php
/*hello*/

/*css*/

/*css_main*/
?>
<?php
/*query_default

$info_default = mysqli_fetch_assoc($query_default);
$logo = $info_default['foto'];
*/
if (isset($_SERVER['HTTP_REFERER'])) { 

	?>
	<div style='position: fixed; bottom: 0; width: 100%; height: 5%; z-index: 5; background-color: #2D383A; box-shadow: 0px 0px 10px 3px rgba(158,158,158,0.3)'; ><p style="padding-left: 4%; padding-top: 2%;">Página <?php echo $titulo_main; ?></p></div>
	<?php
}
?>
<!--menu_query-->
<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="codepixer">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Coffee</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">					
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/main.css">

			<style>
			<?php 
			/* CSS PERSONALIZADO DA DB */
			include '../../../../../secoes.php';

			?>
		</style>
	</head>
	<body>

		<header id="header" id="home">
			<div class="header-top">
				<div class="container">
					<div class="row justify-content-end">
						<div class="col-lg-8 col-sm-4 col-8 header-top-right no-padding">
							<ul>
								<li>
									Mon-Fri: 8am to 2pm
								</li>
								<li>
									Sat-Sun: 11am to 4pm
								</li>
								<li>
									<a href="tel:(012) 6985 236 7512">(012) 6985 236 7512</a>
								</li>				  					
							</ul>
						</div>
					</div>			  					
				</div>
			</div>			  	
			<div class="container">
				<div class="row align-items-center justify-content-between d-flex">
					<div id="logo">
						<a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
					</div>
					<nav id="nav-menu-container">
						<ul class="nav-menu">
							<li class="menu-active"><a href="#home">Home</a></li>
							<?php
							while ($info_menu = mysqli_fetch_array($menu)) {
								$secao_menu = $info_menu['secao'];
								$scroll_tag = $info_menu['scroll_tag'];

								echo "<li><a href='$scroll_tag'>$secao_menu</a></li>";
							}
							?>
						</ul>
					</nav><!-- #nav-menu-container -->		    		
				</div>
			</div>
		</header><!-- #header -->


		<!-- start banner Area -->
		<section class="banner-area" id="home">	
			<div class="container">
				<div class="row fullscreen d-flex align-items-center justify-content-start">
					<div class="banner-content col-lg-7">
						<h6 class="text-white text-uppercase"></h6>
						<h1>
							<?php echo $titulo_main; ?> <br>
											
						</h1>
						<a href="#" class="primary-btn text-uppercase">#Botao 1</a>
					</div>											
				</div>
			</div>
		</section>
		<!-- End banner Area -->	

    <!--WHILE-->
    <!--Sobre-->
    <?php /*
    <section class="site-section" id="section-about">
      <div class="container">
        <div class="row">
          <div class="col-md-5 site-animate mb-5">
            <h4 class="site-sub-title"><!--Titulo_Sobre_sub--><?php if (isset($titulo)) { echo $titulo; } ?></h4>
            <h2 class="site-primary-title display-4"><!--Titulo_Sobre--><!--Titulo_Sobre_sub--><!--fim_Titulo_Sobre--><?php if (isset($titulo)) { echo $titulo; } ?></h2>
           

            <!--P_Titulo_Sobre--><p class="mb-4"><?php if (isset($info)) { echo $info; } ?><!--P_Titulo_Sobre_sub--></p><!--fim_P_Titulo_Sobre-->
            <p><a href="#" class="btn btn-secondary btn-lg">Learn More About Us</a></p>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-6 site-animate img" data-animate-effect="fadeInRight">
            <img src="images/about_img_1.jpg" alt="Free Template by colorlib.com" class="img-fluid">
          </div>
        </div>
      </div>
    </section>
    */ ?>
    <!--fim_Sobre-->
    <!--fim_WHILE-->

		<!-- start footer Area -->		
		<footer class="footer-area section-gap">
			<div class="container">
				<div class="row">
					<div class="col-lg-5 col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<h6>About Us</h6>
							<p>
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua.
							</p>
							<p class="footer-text">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>								
						</div>
					</div>
					<div class="col-lg-5  col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<h6>Newsletter</h6>
							<p>Stay update with our latest</p>
							<div class="" id="mc_embed_signup">
								<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">
									<input class="form-control" name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">
									<button class="click-btn btn btn-default"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>

									<div class="info pt-20"></div>
								</form>
							</div>
						</div>
					</div>						
					<div class="col-lg-2 col-md-6 col-sm-6 social-widget">
						<div class="single-footer-widget">
							<h6>Follow Us</h6>
							<p>Let us be social</p>
							<div class="footer-social d-flex align-items-center">
								<a href="#"><i class="fa fa-facebook"></i></a>
								<a href="#"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-dribbble"></i></a>
								<a href="#"><i class="fa fa-behance"></i></a>
							</div>
						</div>
					</div>							
				</div>
			</div>
		</footer>	
		<!-- End footer Area -->	


		<script src="js/vendor/jquery-2.2.4.min.js"></script> 
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>			
		<script src="js/easing.min.js"></script>			
		<script src="js/hoverIntent.js"></script>
		<script src="js/superfish.min.js"></script>	
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>	
		<script src="js/owl.carousel.min.js"></script>			
		<script src="js/jquery.sticky.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>			
		<script src="js/parallax.min.js"></script>	
		<script src="js/waypoints.min.js"></script>
		<script src="js/jquery.counterup.min.js"></script>					
		<script src="js/mail-script.js"></script>	
		<script src="js/main.js"></script>	
		<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
		<script>
    	
var google;

function init() {
    // Basic options for a simple Google Map
    // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
    // var myLatlng = new google.maps.LatLng(40.71751, -73.990922);
    var myLatlng = new google.maps.LatLng(<?php echo $latitude; ?>, <?php echo $longitude; ?>);
    // 39.399872
    // -8.224454
    
    var mapOptions = {
        // How zoomed in you want the map to start at (always required)
        zoom: 13,

        // The latitude and longitude to center the map (always required)
        center: myLatlng,

        // How you would like to style the map. 
        scrollwheel: false,
        styles: [
            {
                "featureType": "administrative.country",
                "elementType": "geometry",
                "stylers": [
                    {
                        "visibility": "simplified"
                    },
                    {
                        "hue": "#ff0000"
                    }
                ]
            }
        ]
    };

    

    // Get the HTML DOM element that will contain your map 
    // We are using a div with id="map" seen below in the <body>
    var mapElement = document.getElementById('map');

    // Create the Google Map using out element and options defined above
    var map = new google.maps.Map(mapElement, mapOptions);
    
    var addresses = ['<?php echo $nome_localizacao; ?>'];

    for (var x = 0; x < addresses.length; x++) {
        $.getJSON('http://maps.googleapis.com/maps/api/geocode/json?address='+addresses[x]+'&sensor=false', null, function (data) {
            var p = data.results[0].geometry.location
            var latlng = new google.maps.LatLng(p.lat, p.lng);
            new google.maps.Marker({
                position: latlng,
                map: map,
            });

        });
    }
    
}
google.maps.event.addDomListener(window, 'load', init);
    </script>


	</body>
	</html>



