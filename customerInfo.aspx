<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeFile="customerInfo.aspx.cs" Inherits="customerInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Example DataTables Card-->
			<div class="card mb-3">
			            <div class="card-header">
                            <div class="row">
                                 <div class="col-sm-3">
                                    <i class="fa fa-table"></i><strong>CUSTOMER INFO</strong>
                                 </div>
                                 <div class="col-sm-4">
                                 </div>
                                 <div class="col-sm-3">
                                    <asp:TextBox ID="txtSearch" runat="server" class="form-control left" placeholder="Search Records"></asp:TextBox>
                                 </div>
                                 <div class="col-sm-2">
                                     <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-secondary" 
                                         onclick="Button1_Click"/>
                                 </div>
				            
                            </div>
			            </div>
					        <div class="card-body">
                                <asp:GridView ID="GridView1" runat="server" class="table table-hover" GridLines="None" 
                                AutoGenerateColumns="False" DataKeyNames="id" 
                                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:BoundField HeaderText="S/N" DataField="id" />
                                        <asp:BoundField HeaderText="Names" DataField="names" />
                                        <asp:BoundField HeaderText="Phone" DataField="phone" />
                                        <asp:BoundField HeaderText="Email" DataField="email" />
                                        <asp:BoundField DataField="regdate" HeaderText="Reg Date" />
                                        <asp:BoundField />
                                        
                                        <asp:TemplateField HeaderText="Action">
                                            <ItemTemplate>
                                                <asp:Button ID="Button2" runat="server" Text="Edit" class="btn btn-warning" 
                                                    onclick="edit_Click" />
                                                <asp:Button ID="Button3" runat="server" Text="Delete" class="btn btn-danger" 
                                                    onclick="delete_Click"/>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        
                                    </Columns>

                                </asp:GridView>
                    </div>
				    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
		    </div>	
</asp:Content>

