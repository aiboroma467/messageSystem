<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign-up.aspx.cs" Inherits="sign_up" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initail-scale=1"/>
    <title>Sign up</title>
	<link href="css/style2.css" rel="stylesheet">
     <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal" >
        <header>
			<div class="container container-main">
				<div class="row">
					<div class="col-md-4">
						<img class="logo" src="" alt="theblog"/>
					</div>
					<div class="col-md-8">
					    <h1>Customer Information </h1>
                            <h2><span class="em-text">System (CIS)</span></h2>
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
							<li><a href="#">About</a></li>
							<li><a href="#">contact</a></li>
							<li class="dropdown active">
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
					<div class="col-md-2">
					    
                    </div>
                    <div class="col-md-10">
						<h1>Customer Register</h1>
                        <asp:Panel ID="Panel1"  runat="server" Visible="False">
                           <div  class="message">
                                <asp:Label ID="msgfal" runat="server"></asp:Label>
                           </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2"  runat="server" Visible="False">
                           <div  class="messageGreen">
                                <asp:Label ID="msgsucc" runat="server"></asp:Label>
                           </div>
                        </asp:Panel>
					    
                    </div>
				</div>
			</div>
		</section>

                <div class="col-sm-12">
					
							<div class="form-group"> 
                                <div class="col-sm-6">
								    <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Names" required></asp:TextBox>
                                </div>
							</div> 
                            <div class="form-group"> 
                                <div class="col-sm-4">
								    <asp:TextBox ID="phone" runat="server" class="form-control" placeholder="Phone" required></asp:TextBox>
                                </div>
							</div>
                           <div class="form-group"> 
                                <div class="col-sm-4">
								    <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email" required></asp:TextBox>
                                </div>
							</div>

                            <div class="form-group"> 
                                <div class="col-sm-4">
								    <asp:TextBox ID="pwd" runat="server" class="form-control" placeholder="Password" TextMode="Password" required></asp:TextBox>
                                </div>
							</div>

                            <div class="form-group"> 
                                <div class="col-sm-4">
								    <asp:TextBox ID="confirm" runat="server" class="form-control" placeholder="Confirm Password" TextMode="Password" required></asp:TextBox>

                                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                        ControlToCompare="pwd" ControlToValidate="confirm" 
                                        ErrorMessage="CompareValidator"></asp:CompareValidator>

                                </div>
							</div>
                            
                                  <asp:Button ID="Button1" CssClass="btn1" runat="server" Text="Submit" onclick="signUp_Click"/>
                               
                      </div>          
			             
							

</div>

     <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>-->
		
	<script src="jquery/jquery/jquery-2.0.3.min.js"></script> 
		<script src="js/bootstrap.js"></script>
	   <script src="js/main.js"></script>
    </form>
</body>
</html>
