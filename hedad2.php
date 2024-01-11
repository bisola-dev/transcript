<div class="header">
			
			<!-- Logo -->
			<div class="header-left">
				<a href="dashboardapp.php" class="logo">
					
				</a>
			</div>
			<!-- /Logo -->
			
			<a id="toggle_btn" href="javascript:void(0);">
				<span class="bar-icon">
					<span></span>
					<span></span>
					<span></span>
				</span>
			</a>
			<!-- Header Title -->
			<div class="page-title-box">
				<h3>Transcript Management Portal </h3>
				<h3>Welcome, You are logged in <?php  echo $ssur.' '.$sfirs;?></h3>			
              </div>
			<!-- /Header Title -->
			<div class="scrolling-container">
           <div class="scrolling-text">
        <?php
        // Generate the content using PHP
        $content = "<span class='red-text'>Dear $sfirs, please ensure that you validate and print out your receipt of payment, Failure to do this will result to no processing of your transcript.</span>";
            echo $content;
        ?>
    </div>
   </div>

			
	<a id="mobile_btn" class="mobile_btn" href="#sidebar"><i class="fa fa-bars" aria-hidden="true"></i></a>

			<!-- Header Menu -->
			<ul class="nav user-menu">
			
			   
				<!-- Message Notifications -->
			
			
		</div>

<style>
			.scrolling-container {
    overflow: hidden; /* Hide overflowing content */
}
.red-text {
  color: red;
}

.scrolling-text {

    white-space: nowrap; /* Prevent text from wrapping */
    animation: scroll-left 20s linear infinite; /* Scroll animation */
}

@keyframes scroll-left {
    0% {
        transform: translateX(100%);
    }
    100% {
        transform: translateX(-100%); /* Adjust for the width of the container */
    }
}
</style>
			

</html>







			