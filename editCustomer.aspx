<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeFile="editCustomer.aspx.cs" Inherits="editCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
	    <link href="css/style2.css" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Panel ID="Panel1" runat="server">
            
                    <div class="col-sm-12">
                        
                        <div class="card card-default">
                            <div class="card-header"><h4>Update Customer Info</h4></div>
                            <div class="card-body">

                                    <div class="col-sm-6">
                                          <div class="form-row">
                                            <div class="form-group col-md-12">
                                              <asp:TextBox ID="name" runat="server" class="form-control" placeholder="Names" required></asp:TextBox>
                                            </div>
                                          </div>

                                           <div class="form-row">
                                            <div class="form-group col-md-6">
                                              <asp:TextBox ID="phone" runat="server" class="form-control" placeholder="Phone" required></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                              <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Email" required></asp:TextBox>
                                            </div>
                                          </div>

                                          <div class="form-row">
                                            <div class="form-group col-md-6">

<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkEdit_Click">Change Password</asp:LinkButton>
                                              <asp:TextBox ID="pwd" runat="server" class="form-control" placeholder="Password" 
                                                    required ReadOnly="True"></asp:TextBox>
                                                    <br />
                                                 <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="Update" onclick="Update_Click"/>
                                                <asp:Button ID="Button2" CssClass="btn btn-danger" runat="server" Text="Cancel" onclick="cancel_Click"/>
                                            </div>
                                            <div class="form-group col-md-6">
                                               
                                            </div>

                                          </div>

                                          
                                    </div>
                                    <div class="col-sm-6">
                                    </div>
                                 </div>
                             </div>
                         </div>
    </asp:Panel>



    <asp:Panel ID="Panel2" runat="server" Visible="false">
    
                <div class="col-sm-12">
                        
                        <div class="card card-default">
                            <div class="card-header"><h4>Change Password</h4></div>
                            <div class="card-body">
                                
                                    <div class="col-sm-4">
                                            <asp:Label ID="msgPwd" runat="server" Text=""></asp:Label>  
                                          <div class="form-row">
                                                <div class="form-group ">
                                                    <asp:TextBox ID="oldpwd" runat="server" class="form-control" placeholder="Old Password" 
                                                        required ></asp:TextBox>
                                                </div>
                                          </div>

                                           <div class="form-row">
                                                <div class="form-group ">
                                                    <asp:TextBox ID="newpwd" runat="server" class="form-control" placeholder="New Password" 
                                                        required ></asp:TextBox>
                                                </div>
                                          </div>

                                          <div class="form-row">
                                                <div class="form-group ">
                                                    <asp:TextBox ID="txtconfirm" runat="server" class="form-control" 
                                                        placeholder="Confirm Password" required ></asp:TextBox>
                                                </div>

                                          </div>

                                          <asp:Button ID="Button3" CssClass="btn btn-warning" runat="server" Text="Update" onclick="changPwd_Click"/>
                                          <asp:Button ID="Button4" CssClass="btn btn-danger" runat="server" Text="Cancel" onclick="canPwd_Click"/>
                                    </div>
                                    <div class="col-sm-4">
                                    
                                    </div>
                                    <div class="col-sm-4">
                                    
                                    </div>
                                 </div>
                             </div>
                         </div>
    </asp:Panel>




                    
</asp:Content>

