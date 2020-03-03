<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initail-scale=1"/>
    <title>Home Page</title>
    <link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/style2.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <header>
			<div class="container container-main">
				<div class="row">
					<div class="col-md-4">
						<img class="logo" src="images/badge2.jpg" alt="theblog"/>
					</div>
					<div class="col-md-8">
					    <h1>FEDERAL REPUBLIC OF NIGERIA
                           <span class="em-text">NIGERIAN PRISON SERVICE</span></h1>
                            <p>RIVERS STATE COMMAND</p>
					</div>
				</div>
			</div>
		</header>


        <div class="container container-main">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
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
							<li><a href="Default.aspx">Home</a></li>
							<li><a href="about.aspx">About</a></li>
							<li class="active"><a href="contact.aspx">contact</a></li>
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
			</nav>





		
		<section id="title-bar">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1>Contact Us</h1>
					</div>
				</div>
			</div>
		</section>

    </div>
    </form>
</body>
</html>
