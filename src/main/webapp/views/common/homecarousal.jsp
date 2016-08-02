<!DOCTYPE html>
<html>
<head>

<style>
.carousel-inner>.item>img {
	margin: 0 auto;
/* 	width: 730px;
	height: 300px;
 */
	width: 803px;
	height: 330px;
	
}
</style>

</head>

<body>

	<!-- Slider Starts -->
	<div id="main-carousel" class="carousel slide carousel-fade"
		data-ride="carousel">
		<!-- Indicators Starts -->
		<ol class="carousel-indicators hidden-sm hidden-xs">
			<li data-target="#main-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#main-carousel" data-slide-to="1"></li>
			<li data-target="#main-carousel" data-slide-to="2"></li>
		</ol>
		<!-- Indicators Ends -->
		<!-- Wrapper For Slides Starts -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="resources/images/carousel1.jpg" alt="Slider"
					class="img-responsive" />
				<div class="carousel-caption text-center hidden-xs">
					<!-- 
						<h1>Full Frame Nikon SLR Cameras</h1>
						<p>
							Lorem Ipsum is simply dummy text of the printing<br> and typesetting industry.
						</p>
 -->
					<h2>
						Starts From <span>$33.33</span>
					</h2>
				</div>
			</div>
			<div class="item">
				<img src="resources/images/carousel2.jpg" alt="Slider"
					class="img-responsive" />
				<div class="carousel-caption text-center hidden-xs">
					<!--
						<h1>Hobby Hub</h1>
						<p>
							Lorem Ipsum is simply dummy text of the printing<br> and typesetting industry.
						</p>
-->
					<h2>
						Starts From <span>$20.99</span>
					</h2>

				</div>
			</div>
			<div class="item">
				<img src="resources/images/carousel3.jpg" alt="Slider"
					class="img-responsive" />
				<div class="carousel-caption text-center hidden-xs">
					<!-- 
						<h1>Full Frame Canon DSLR Cameras</h1>
						<p>
							Lorem Ipsum is simply dummy text of the printing<br> and typesetting industry.
						</p>
 -->
					<h2>
						Starts From <span>$56.99</span>
					</h2>
				</div>
			</div>

		</div>
		<!-- Wrapper For Slides Ends -->
		<!-- Controls Starts -->
		<a class="left carousel-control hidden-xs" href="#main-carousel"
			role="button" data-slide="prev"> <span class="fa fa-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control hidden-xs" href="#main-carousel"
			role="button" data-slide="next"> <span
			class="fa fa-chevron-right" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
		<!-- Controls Ends -->
	</div>
	<!-- Slider Ends -->

</body>
</html>