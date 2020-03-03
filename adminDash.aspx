<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminDash.aspx.cs" Inherits="adminDash" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="Css/Style1.css" type="text/css" rel="Stylesheet" />

    
	

	<link rel="stylesheet" href="css/style1111/core.css" />
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
	    <link href="css/style2.css" rel="stylesheet">
        <link href="css/styleAdmin.css" type="text/css" rel="Stylesheet" />
          <!-- Custom fonts for this template-->
          <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
          <!-- Page level plugin CSS-->
          <link href="vendor/datatables/css/dataTables.bootstrap4.css" rel="stylesheet">



          <script language="javascript" type="text/javascript">
              var size = 2;
              var id = 0;

              function ProgressBar() {
                  if (document.getElementById('<%=GridView1.ClientID %>').value != "") {
                      document.getElementById("divProgress").style.display = "block";
                      document.getElementById("divUpload").style.display = "block";
                      id = setInterval("progress()", 1);
                      return true;
                  }
                  else {
                      //alert("Select a file to upload");
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
                        Admin|<asp:Label ID="welcom_admin" runat="server" ></asp:Label>
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
                        CausesValidation="False">Manage File</asp:LinkButton></h4>
                </li>
                 <li>
                   <h4> <asp:LinkButton ID="LinkButton3" runat="server" CssClass="link1" 
                        onclick="LinkButton2_Click" CausesValidation="False">Manage Customer</asp:LinkButton></h4>
                </li>
                <li>
                    <h4><asp:LinkButton ID="LinkButton5" runat="server" CssClass="link1" 
                        onclick="LinkButton4_Click">Sign Out</asp:LinkButton> </h4>
                </li>              
              </ul>
        </div>
     </div>
        <div class="contentpage">
                

    <div class="row-item">
        
        <div class="col-sm-12">



        <asp:Panel ID="Panel1"  runat="server" Visible="False" class="message">
            <asp:Label ID="msgfal" runat="server"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2"  runat="server" Visible="False" class="messageGreen">
            <asp:Label ID="msgsucc" runat="server"></asp:Label>
        </asp:Panel>  
                                            
            
            <!-- Icon Cards-->
                  <div class="row">
                    <div class="col-sm-4 mb-3">
                      <div class="card text-white bg-primary o-hidden h-100">
                        <div class="card-body">
                            <h3>TOTAL CUSTOMER</h3>
                            <h3><asp:Label ID="msg" runat="server" Text=""></asp:Label></h3>
                        </div>
                      </div>
                    </div>
                    <div class="col-sm-4 mb-3">
                      <div class="card text-white bg-warning o-hidden h-100">
                        <div class="card-body">
                            <h3>TOTAL UPLOADED FILES</h3>
                            <h3><asp:Label ID="msg1" runat="server" Text=""></asp:Label></h3>
                        </div>
                        
                      </div>
                    </div>
                    
                    <div class="col-sm-4 mb-3">
                      <div class="card text-white bg-danger o-hidden h-100">
                        <div class="card-body">
                            <h3>TOTAL DISK STORAGE</h3>
                            <h3><asp:Label ID="msg2" runat="server" Text=""></asp:Label>kb</h3>
                        </div>
                      </div>
                    </div>
                  </div>




             <!-- Example DataTables Card-->
			<div class="card mb-3">
			            <div class="card-header">
				            <i class="fa fa-table"></i><strong>FILE UPLOADED</strong>

                            
                            <div id="divUpload" style="display: none">
                                <div style="width: 300pt; text-align: center;">
                                    Transfering...</div>
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
					        <div class="card-body">




						       
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    class="table table-hover" DataKeyNames="id" 
                                    BorderColor="Silver" BorderStyle="None" GridLines="None"
                                    AllowPaging="True">
                                    <Columns>
                                        <asp:BoundField DataField="filename" HeaderText="Filename" 
                                            SortExpression="filename" />
                                        <asp:BoundField DataField="filesize" HeaderText="Size (in kb)" 
                                            SortExpression="filesize" />

                                       
                                        <asp:BoundField DataField="uploadedTime" HeaderText="Uploaded Time" />

                                       
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:Button ID="btntransfer" runat="server" class="btn btn-default" Text="Tranfer File" OnClientClick="return ProgressBar()" OnClick="tranFile_Click"/>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                       
                                    </Columns>
                                    <HeaderStyle Font-Size="12pt" />
                                    <RowStyle Font-Size="12pt" />
                                </asp:GridView>
					        </div>
				        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
			        </div>	
		</div>
	</div>


         

	 

    <br />
                
        </div>

        
        <script src="jquery/jquery/jquery-2.0.3.min.js"></script> 
		<script src="js/bootstrap.js"></script>
	   <script src="js/main.js"></script>
    </form>
</body>
</html>
