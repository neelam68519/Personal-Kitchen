<%@include file="includes/header.jsp"%>
<!--start slider -->
<link rel="stylesheet" href="resources/css/fwslider.css" media="all">
<script src="resources/js/jquery-ui.min.js"></script>
<script src="resources/js/css3-mediaqueries.js"></script>
<script src="resources/js/fwslider.js"></script>
<!--end slider -->

<!-- Include the API client and Google+ client. -->
<script src="https://plus.google.com/js/client:plusone.js"></script>
</head>
<script>
	
</script>

<!-- start-container -->
<!-- Cook or sell div -->
<div id="sticky-anchor"></div>
<div id="sticky" class="row" style="background-color: #869D8F">
	<div class="col-md-6 col-md-offset-3" style="padding: 2% 0%"
		align="center">
		<a class='btn btn-lg main-button' id="sell-food" href="sell-item">Sell
			Food</a>

		<button class='btn btn-lg main-button' data-toggle="modal"
			data-target="#myModal">Buy Food</button>
	</div>
</div>
<div class="container-fluid">
	<!-- select area modal dailog -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header theme-background-grey">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Select Your Area</h4>
				</div>
				<form class="form-horizontal" method="post" action="filter-area">
					<div class="modal-body">

						<div class="form-group">
							<label for="userCity" style="margin: 10px">City</label> <input
								type="text" placeholder="Select your City" id="city" required
								class="textbox" style="width: 35%; height: 10%;" name="city">
							<label for="userArea" style="margin: 10px">Area</label> <input
								type="text" placeholder="Select your Area" id="locality"
								required class="textbox" style="width: 35%; height: 10%;"
								name="locality">
						</div>

					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-primary" value="Submit">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Modal ends here -->
	<div class="row">
		<div class="col-md-12">
			<!----start-images-slider---->
			<div class="images-slider">
				<div id="fwslider">
					<div class="slider_container">
						<div class="slide">
							<img src="resources/images/home-bg2.jpg" alt="" height="600px" />
							<div class="slide_content">
								<div class="slide_content_wrap">
									<p class="description">Taste Bhi, Health Bhi!</p>
									<h4 class="title">Home Cooked Food</h4>
									<p class="description">
										<!--                                <a href="#">Cook</a>
                                 <a href="#">Eat</a> -->
									</p>
									<div class="slide-btns description"></div>
								</div>
							</div>
						</div>
						<div class="slider_container">
							<div class="slide">
								<img src="resources/images/home-bg.jpg" alt="" height="600px" />
								<div class="slide_content">
									<div class="slide_content_wrap">
										<p class="description">Taste Bhi, Health Bhi!</p>
										<h4 class="title">Home Cooked Food</h4>
										<p class="description">
											<!--                                   <a href="#">Cook</a>
                                    <a href="#">Eat</a> -->
										</p>
										<div class="slide-btns description"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="slider_container">
							<div class="slide">
								<img src="resources/images/home-bg1.jpg" alt="" height="600px" />
								<div class="slide_content">
									<div class="slide_content_wrap">
										<p class="description">Taste Bhi, Health Bhi!</p>
										<h4 class="title">Home Cooked Food</h4>
										<p class="description">
											<!--                                   <a href="#">Cook</a>
                                    <a href="#">Eat</a> -->
										</p>
										<div class="slide-btns description"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="timers"></div>
						<div class="slidePrev">
							<span> </span>
						</div>
						<div class="slideNext">
							<span> </span>
						</div>
					</div>
					<!--/slider -->
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="content">
			<div class="row">
				<div class="col-md-6 text-center">
					<h2>Sell Home Cooked Food</h2>
				</div>
				<div class="col-md-6 text-center verticalLine">
					<h2>Buy Home Cooked Food</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 text-center">
					<img src="resources\images\sell_home_cooked.jpg" width="300px"
						style="margin: 5%">
					<p>Everyone loves food and in-turn, they love the bearer of
						delicious food. If you can make tasty recipes and dishes, why not
						spread the love, and also make some money while you are at it.
						With Personal Kitchen, you can not only get appreciated and noticed
						for your knack of cooking, but you can also make a healthy
						business out of it, that too at the comforts of your home. All you
						have to do is prepare a dish, upload the details and we shall help
						you deliver it to people around the city.</p>
				</div>
				<div class="col-md-6 text-center verticalLine">
					<img src="resources\images\eat_home_cooked.jpg" height="200px"
						style="margin: 5%">
					<p>The special thing about a home cooked meal is the feeling of
						abundance it provides, everything you have and need is right in
						front of you and within arms' reach. There's no worrying about
						what to order and what the bill is going to be. Just because you
						have to live away from your home, it doesn't mean that your life
						should be devoid of such happiness, not any longer for sure. Now
						get the taste and benefits of home made food by simply logging on
						to Personal Kitchen and ordering what you want. We shall bring it
						to your door step in no time.</p>
				</div>
			</div>
		</div>
	</div>

	<!-- End-container -->
	<div class="container">
		<div class="top">
			<div class="row">
				<div class="col-md-4">
					<div class="grid">
						<h2>About Us</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Mauris egestas orci et blandit dictum. Interdum et malesuada
							fames ac ante ipsum primis in faucibus Quisque posuere diam et
							est hendrerit, eget sodales lectus.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="grid">
						<h2>Our Blog</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Mauris egestas orci et blandit dictum. Interdum et malesuada
							fames ac ante ipsum primis in faucibus Quisque posuere diam et
							est hendrerit, eget sodales lectus.</p>
					</div>
				</div>
				<div class="col-md-4">
					<div class="grid1 pull-left">
						<h2>Contact</h2>
						<address>
							<p>tryd online service</p>
							<p>12345 main street</p>
							<p>Newyork</p>
							<p>
								<a href="#">info#@mystore.com</a>
							</p>
							<p>555-58746-5475</p>
						</address>
					</div>
					<div class="grid2 pull-right">
						<div class="social-icons-set">
							<ul>
								<li><a class="facebook" href="#"> </a></li>
								<li><a class="twitter" href="#"> </a></li>
								<li><a class="vimeo" href="#"> </a></li>
								<div class="clear"></div>
							</ul>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>