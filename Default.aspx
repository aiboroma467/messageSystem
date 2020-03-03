<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initail-scale=1"/>
    <title>Home Page</title>
	<link href="css/style2.css" rel="stylesheet">
     <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <header>
			<div class="container container-main">
				<div class="row">
					<div class="col-md-4">
						<img class="logo" src="images/new4.png" alt="theblog"/>
					</div>
					<div class="col-md-8">
					    <h1>Customer Information </h1>
                            <h2><span class="em-text">System (CIS)</span></h2>
					</div>
				</div>
			</div>
		</header>


        <div class="container">


			<nav class="navbar navbar-default">
				<div class="container-fluid">

                <section id="contact">
                  <div class="row">
		           <div class="col-md-8">
                                
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
						aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation </span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
						</button>
					</div>
					<div id="navbar" class="collapse navbar-collapse"> 
						<ul class="nav navbar-nav">
							<li class="active"><a href="Default.aspx">Home</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Contact</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button">Dropdown <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="sign-up.aspx">Sign up</a></li>
									<li><a href="sign-in.aspx">Sign in</a></li>
									
								</ul>
							</li>
						</ul>
					</div>

                    </div>
		               <div class="col-md-4">
                        <h4><span class="em-text">News update of the NPS</span></h4>
                       </div>
                 </div>
               </section
				</div>


			</nav>


 


      <div id="myCarousel" class="carousel slide" data-ride="carousel">

	    <section id="contact">
        <div class="row">
		    <div class="col-md-8">

			  <!-- Wrapper for slides -->
			  <div class="carousel-inner">
				<div class="item active">
				  <img src="images/img1.jpg" alt="Slide One">
				  <div class="carousel-caption">
					<h4><a href="post.html"> Cloud Computing Deployment And Service Models (Updated 2019)</a></h4>
					<p>Cloud is the future of computing. It is about outsourcing of IT services 
                    and infrastructure to make them accessible remotely via the Internet. 
                    Utilizing cloud-computing models boosts not only productivity but also 
                    provide a competitive edge to organizations 
					</p>
				  </div>
				</div><!-- items end -->
				
				<div class="item">
				  <img src="images/img2.jpg" alt="Slide Two">
				  <div class="carousel-caption">
					<h4><a href="post.html">Cloud resources and digitalization streamline label management </a></h4>
					<p>No matter what you’re  packaging or providing, labeling is an organization-wide 
                    business process vital to internal and external operations. From ensuring distribution
                     and logistics is as fine-tuned as possible, to helping control and govern suppliers 
					</p>
				  </div>
				</div><!-- items end -->
				
				<div class="item">
				  <img src="images/img4.jpg" alt="Slide Three">
				  <div class="carousel-caption">
					<h4><a href="post.html">Why Cloud Computing Is Ideal for Small Businesses</a></h4>
					<p>Because it's the best thing for small business since the creation of the stapler. 
                    Cloud computing can give you access to your business data and applications 
                    from anywhere at any time from any mobile device, at a reasonable price.
					</p>
				  </div>
				</div><!-- items end -->
				
				<div class="item">
				  <img src="images/img3.png" alt="Slide Four">
				  <div class="carousel-caption">
					<h4><a href="post.html">Cloud Computing Trends for 2019 </a></h4>
					<p>Cloud computing is not just a fad, it’s the way of the future, 
                    so expect continued growth; even dramatic growth in the years to come. 
					</p>
				  </div>
				</div><!-- items end -->
				
				
			  </div><!-- end of inner carousel -->
            </div>
						
						
			<ul class="list-group slider-list col-md-4">
				<li data-target="#myCarousel" data-slide-to="0" class="list-group-item active">
					<img src="images/img1.jpg" class="img-thumbnail img-slide"> <h4>Cloud Computing Deployment And Service Models (Updated 2019)</h4>
					<p>Cloud is the future of computing. It is about outsourcing of IT services... </p>
				</li>
				
				<li data-target="#myCarousel" data-slide-to="1" class="list-group-item ">
					<img src="images/img2.jpg" class="img-thumbnail img-slide"> <h4>Cloud resources and digitalization streamline label management</h4>
					<p>No matter what you’re  packaging or providing, labeling is an organization-wide...</p>
				</li>
				
				<li data-target="#myCarousel" data-slide-to="2" class="list-group-item ">
					<img src="images/img4.jpg" class="img-thumbnail img-slide"> <h4>Why Cloud Computing Is Ideal for Small Businesses</h4>
					<p>Because it's the best thing for small business since the creation...</p>
				</li>
				
				<li data-target="#myCarousel" data-slide-to="3" class="list-group-item ">
					<img src="images/img3.png" class="img-thumbnail img-slide"> <h4>Cloud Computing Trends for 2019</h4>
					<p>Cloud computing is not just a fad, it’s the way of the future, so expect...</p>
				</li>


			</ul>	
            
		</div>
        </section>

        </div>
     </div>
     
		
	<script src="jquery/jquery/jquery-2.0.3.min.js"></script> 
		<script src="js/bootstrap.js"></script>
	   <script src="js/main.js"></script>
    </form>
</body>
</html>
