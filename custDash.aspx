<%@ Page Language="C#" AutoEventWireup="true" CodeFile="custDash.aspx.cs" Inherits="custDash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<meta name="viewport" content="width=device-width, initail-scale=1"/>
    <title></title>

    
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="css/style2.css" rel="stylesheet">
    <link href="css/styleAdmin.css" type="text/css" rel="Stylesheet" />

     <script language="javascript" type="text/javascript">
         var size = 2;
         var id = 0;

         function ProgressBar() {
             if (document.getElementById('<%=txtfile.ClientID %>').value != "") {
                 document.getElementById("divProgress").style.display = "block";
                 document.getElementById("divUpload").style.display = "block";
                 id = setInterval("progress()", 20);
                 return true;
             }
             else {
                 alert("Select a file to upload");
                 return false;
             }

         }

         function progress() {
             size = size + 1;
             if (size > 299) {
                 clearTimeout(id);
             }
             document.getElementById("divProgress").style.width = size + "pt";
             document.getElementById("<%=lblPercentage.ClientID %>").firstChild.data = parseInt(size / 3) + "%";
         }

    </script>


</head>
<body>
    <form id="form1" runat="server">
            <header>
			<div class="container container-main">
				<div class="row">
					<div class="col-md-4">
						<img class="logo" src="images/new44.png" alt="theblog"/>
					</div>
                    <div class="col-md-8">
					    <h1>Customer Information </h1>
                            <h2><span class="em-text">System (CIS)</span></h2>
					</div>
				</div>
			</div>
		</header>

        <section id="contact">
            <div class="row">
		        <div class="col-md-8">
		            <h4>
                        Account Holder<asp:Label ID="welcom_admin" runat="server" Text=""></asp:Label>
                    </h4>
		        </div>
		        <div class="col-md-4">
		            
		        </div>
	        </div>
        </section>

    <div class="contentwrapper">
        <div class="sidebar">
            <ul>
                <li>
                   <h4>
                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="link1" 
                        onclick="LinkButton1_Click" CausesValidation="False">Dashboard</asp:LinkButton> 
                     </h4>         
                </li>
                <li>
                   <h4> <asp:LinkButton ID="LinkButton2" runat="server" CssClass="link1" 
                        onclick="LinkButton2_Click" CausesValidation="False">Update Profile</asp:LinkButton></h4>
                </li>
                <li>
                    <h4><asp:LinkButton ID="LinkButton5" runat="server" CssClass="link1" 
                        onclick="LinkButton4_Click">Sign Out</asp:LinkButton> </h4>
                </li>              
              </ul>
        </div>
     </div>
     <div class="contentpage">
            
             <div id="content-main-wrapper">
    </div>

    <div class="row-item">
        
        <div class="col-sm-6">

            <asp:Panel ID="Panel1"  runat="server" Visible="False" class="message">
                <asp:Label ID="msgfal" runat="server"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="Panel2"  runat="server" Visible="False" class="messageGreen">
                <asp:Label ID="msgsucc" runat="server"></asp:Label>
            </asp:Panel>  
                       
                                            
        <asp:Panel ID="Panel3"  runat="server" Visible="true">
            <div class="card card-default">
                <div class="card-header"><h4>Upload File</h4></div>
                <div class="card-body">
                    
                    
                      <div class="form-group">
                            <asp:FileUpload ID="txtfile" runat="server" type="file" class="form-control"/>
                          <asp:Button ID="uploadf" CssClass="btn1" runat="server" Text="Upload File" onClick="uploadf_Click" OnClientClick="return ProgressBar()"/>

                            <div id="divUpload" style="display: none">
                                <div style="width: 300pt; text-align: center;">
                                    Uploading...</div>
                                <div style="width: 300pt; height: 32px; border: solid 1pt gray; border-radius: 3px; ">
                                    <div id="divProgress" runat="server" style="border-radius: 3px; width: 1pt; height: 30px; background-color: #016666;
                                        display: none">
                                    </div>
                                </div>
                                <div style="width: 300pt; text-align: center;">
                                    <asp:Label ID="lblPercentage" runat="server" Text="Label"></asp:Label></div>
                                <br />
                                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
                            </div>
                    </div>


                   
                  
                </div>
            </div>

        </asp:Panel> 
      
        </div>



	</div>

            

     </div>
        <script src="jquery/jquery/jquery-2.0.3.min.js"></script> 
		<script src="js/bootstrap.js"></script>
	   <script src="js/main.js"></script>
    </form>
</body>
</html>
