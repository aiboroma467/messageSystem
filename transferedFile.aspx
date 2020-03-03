<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeFile="transferedFile.aspx.cs" Inherits="transferedFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <div class="row-item">
        
            <div class="col-sm-12">



                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CssClass= "table table-hover" BorderStyle="None" 
                    GridLines="None" ShowHeaderWhenEmpty="True" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="#" />
                        <asp:BoundField DataField="filename" HeaderText="Filename" 
                            SortExpression="filename" />
                        <asp:BoundField DataField="filesize" HeaderText="Filesize" 
                            SortExpression="filesize" />
                        <asp:BoundField DataField="transferedTime" HeaderText="Transfered Time" 
                            SortExpression="transferedTime" />
                        
                    </Columns>
                    <HeaderStyle Font-Bold="True" Font-Size="12pt" />
                    <RowStyle BorderStyle="None" Font-Size="12pt" ForeColor="#333333" />
                </asp:GridView>
            </div>
        </div>
</asp:Content>

