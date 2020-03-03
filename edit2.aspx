<%@ Page Title="" Language="C#" MasterPageFile="~/Master2.master" AutoEventWireup="true" CodeFile="edit2.aspx.cs" Inherits="edit2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="Css/Style1.css" type="text/css" rel="Stylesheet" />
	<link rel="stylesheet" href="css/style1111/core.css" />


    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
        .style2
        {
            text-align: right;
            background-color: #EEEEEE;
            font-weight: 700;
            height: 35px;
            width:200px
        }
        .style3
        {
            color: #333333;
        }
        .style8
    {
        height: 28px;
        width: 300px;
    }
        .style9
        {
            height: 35px;
            width: 300px;
        }
        .style10
        {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     

     <asp:Panel ID="Panel3" runat="server" CssClass="exitmsg" Visible="False">
        <table class="style101">
            <tr>
                <td>
                    <asp:Label ID="msg2" runat="server"  
                        style="color: #A94D64; font-size: medium; " ></asp:Label>
                </td>
            </tr>
            <tr> 
                <td>
                    <br />
                    <asp:Button ID="Button5" runat="server" CssClass="btn2" Text="Continue" onclick="msgback_Click" 
                         />
                 </td>
            </tr>
        </table>
    </asp:Panel>



     <asp:Panel ID="Panel1" runat="server">	
		  <asp:Image ID="Image9" runat="server" BorderStyle="Ridge" class="profile-img img-circle"/>
        <table class="table2" border="0">
        <tr>
            <td colspan="4">
                <div id="content-main-wrapper">
	                <div class="row-item" style="margin-top: 30px; margin-bottom: 30px;">
		                
                        <div class="fll row-item-col left">
			                <div class="fll row-item-col left bordered-col" style="background: #d53d40; color:#fff;">
                                <span>Transaction Timestamp</span>
				                <h4 class="panel-title"><asp:Label ID="transTime" runat="server"></asp:Label></h4>
			                </div>
		                </div>

                        
		                <div class="fll row-item-col">
			               
			                <div class="fll row-item-col bordered-col" style="background: green; color: #fff;">
				                <span>Data Item Timestamp</span>
                                <h5 class="panel-title">
                                     <asp:Label ID="dataTime" runat="server"></asp:Label>
                                </h5>
				                
			                </div>
		                </div>
	                </div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="font-size: medium; color: #333333; background-color: #F8F8F8;">
                <h4>Inmate Record</h4>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right; background-color: #F7F7F7">
                <asp:Button ID="Button3" runat="server" Text="Edit" CssClass="btn3" 
                    onclick="Edit_Click"/>
                <asp:Button ID="Button4" runat="server" Text="Cancel" CssClass="btn4" 
                    onclick="Cancel_Click"/>
            </td>
        </tr>
        
        <tr>
            <td class="style2">
                <asp:Label ID="Label7" runat="server" CssClass="style3" Text="Names :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label12" runat="server" CssClass="style3" Text="Age :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label13" runat="server" CssClass="style3" Text="Gender :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblgender" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label14" runat="server" CssClass="style3" Text="Education :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbleducation" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label15" runat="server" CssClass="style3" Text="State :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblstate" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label16" runat="server" CssClass="style3" Text="Nationality :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblnation" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="background-color: #F7F7F7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label17" runat="server" CssClass="style3" Text="Marital Status :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lblmarital" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label18" runat="server" CssClass="style3" Text="Offence :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbloffence" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label19" runat="server" CssClass="style3" 
                    Text="Date of Judgement :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lbljudge" runat="server"></asp:Label>
            </td>
            <td class="style2">
                <asp:Label ID="Label20" runat="server" CssClass="style3" Text="Date of Convict :"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblconvict" runat="server"></asp:Label>
            </td>
        </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label22" runat="server" Text="Prison Name :"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="lblprisonN" runat="server"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="Label25" runat="server" Text="Sentence :"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblsentence" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label27" runat="server" Text="File No :"></asp:Label>
                </td>
                <td class="style8">
                    <asp:Label ID="lblfile" runat="server"></asp:Label>
                </td>
                <td class="style2">
                    
                </td>
                <td>
                    
                </td>
            </tr>
        </table>

    </asp:Panel>


    <asp:Panel ID="Panel2" runat="server" Visible="False">
    
     <table class="table2" border="0">

        <tr>
            <td colspan="4">
                <div id="Div1">
	                <div class="row-item" style="margin-top: 30px; margin-bottom: 30px;">
		                
                        <div class="fll row-item-col left">
			                <div class="fll row-item-col left bordered-col" style="background: #d53d40; color:#fff;">
                                <span>Transaction Timestamp</span>
				                <h4 class="panel-title"><asp:Label ID="transTime2" runat="server"></asp:Label></h4>
			                </div>
		                </div>
		                <div class="fll row-item-col">
			               
			                <div class="fll row-item-col bordered-col" style="background: green; color: #fff;">
				                <span>Data Item Timestamp</span>
                                <h5 class="panel-title">
                                     <asp:Label ID="dataTime2" runat="server"></asp:Label>
                                </h5>
				                
			                </div>
		                </div>
	                </div>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;&nbsp;
                <asp:Label ID="lblID" runat="server" 
                    style="font-size: medium; font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: right; background-color: #F7F7F7">
                <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn3" 
                    onclick="Save_Click"/>
                <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn4" 
                    onclick="Cancel_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="4" 
                style="font-size: medium; color: #333333; font-style: italic; background-color: #F8F8F8;">
                Fields mark <span class="style1">*</span> are required</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" CssClass="style3" Text="Names :"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="nameE" runat="server" Width="250px" Height="28px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" CssClass="style3" Text="Age :"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="ageE" runat="server" Width="250px" Height="28px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" CssClass="style3" Text="Gender :"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="genderE" runat="server" class="form-control" Width="150px" Height="28px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:Label ID="Label11" runat="server" CssClass="style3" Text="Education :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="educationE" runat="server" class="form-control" Width="170px" Height="28px">
                    <asp:ListItem>Never</asp:ListItem>
                    <asp:ListItem>O level</asp:ListItem>
                    <asp:ListItem>Diploma</asp:ListItem>
                    <asp:ListItem>Bachelor Degree</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" CssClass="style3" Text="State :"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="stateE" runat="server" class="form-control" Width="170px" Height="28px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Abia</asp:ListItem>
                    <asp:ListItem>Adamawa</asp:ListItem>
                    <asp:ListItem>Anambra</asp:ListItem>
                    <asp:ListItem> Akwa Ibom</asp:ListItem>
                    <asp:ListItem>Bauchi</asp:ListItem>
                    <asp:ListItem>Bayelsa</asp:ListItem>
                    <asp:ListItem>Benue</asp:ListItem>
                    <asp:ListItem>Borno</asp:ListItem>
                    <asp:ListItem>Cross River</asp:ListItem>
                    <asp:ListItem>Delta</asp:ListItem>
                    <asp:ListItem>Ebonyi</asp:ListItem>
                    <asp:ListItem>Enugu</asp:ListItem>
                    <asp:ListItem>Edo</asp:ListItem>
                    <asp:ListItem>Ekiti</asp:ListItem>
                    <asp:ListItem>Gombe</asp:ListItem>
                    <asp:ListItem>Imo</asp:ListItem>
                    <asp:ListItem>Jigawa</asp:ListItem>
                    <asp:ListItem>Kaduna</asp:ListItem>
                    <asp:ListItem>Kano</asp:ListItem>
                    <asp:ListItem>Katsina</asp:ListItem>
                    <asp:ListItem>Kebbi</asp:ListItem>
                    <asp:ListItem>Kogi</asp:ListItem>
                    <asp:ListItem>Kwara</asp:ListItem>
                    <asp:ListItem>Lagos</asp:ListItem>
                    <asp:ListItem>Nasarawa</asp:ListItem>
                    <asp:ListItem>Niger</asp:ListItem>
                    <asp:ListItem>Ogun</asp:ListItem>
                    <asp:ListItem>Ondo</asp:ListItem>
                    <asp:ListItem>Osun</asp:ListItem>
                    <asp:ListItem>Oyo</asp:ListItem>
                    <asp:ListItem>Plateau</asp:ListItem>
                    <asp:ListItem>Rivers</asp:ListItem>
                    <asp:ListItem>Sokoto</asp:ListItem>
                    <asp:ListItem>Taraba</asp:ListItem>
                    <asp:ListItem>Yobe</asp:ListItem>
                    <asp:ListItem>Zamfara</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:Label ID="Label8" runat="server" CssClass="style3" Text="Nationality :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nationE" runat="server" Width="250px" Height="28px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="background-color: #F7F7F7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label5" runat="server" CssClass="style3" Text="Marital Status :"></asp:Label>
            </td>
            <td class="style9">
                <asp:DropDownList ID="maritalE" runat="server" class="form-control" Width="170px" Height="28px">
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Divorced</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style2">
                <asp:Label ID="Label9" runat="server" CssClass="style3" Text="Offence :"></asp:Label>
            </td>
            <td class="style10">
                <asp:DropDownList ID="offenceE" runat="server" class="form-control" Width="200px" Height="28px">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>murder</asp:ListItem>
                    <asp:ListItem>Rape</asp:ListItem>
                    <asp:ListItem>Steal</asp:ListItem>
                    <asp:ListItem>Robbery</asp:ListItem>
                    <asp:ListItem>Abduction</asp:ListItem>
                    <asp:ListItem>Cheating</asp:ListItem>
                    <asp:ListItem>Corruption and Abuse of office</asp:ListItem>
                    <asp:ListItem>Forgery and Personating</asp:ListItem>
                    <asp:ListItem>Frauds by Trustees</asp:ListItem>
                    <asp:ListItem>Unlawful assembly</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label6" runat="server" CssClass="style3" Text="Date of Judgemen :"></asp:Label>
            </td>
            <td class="style9">
                <asp:TextBox ID="judgeE" runat="server" Height="28px" Width="150px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:Label ID="Label10" runat="server" CssClass="style3" Text="Date of Convict :"></asp:Label>
            </td>
            <td class="style10">
                <asp:TextBox ID="convictE" runat="server" Width="250px" Height="28px"></asp:TextBox>
            </td>
        </tr>
         <tr>
             <td class="style2">
                 <asp:Label ID="Label23" runat="server" Text="Prison Name :"></asp:Label>
             </td>
             <td class="style8">
                 <asp:TextBox ID="prisonE" runat="server" Height="28px" Width="150px"></asp:TextBox>
             </td>
             <td class="style2">
                 <asp:Label ID="Label26" runat="server" Text="Sentence :"></asp:Label>
             </td>
             <td>
                 <asp:TextBox ID="sentenceE" runat="server" Height="28px" Width="250px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style2">
                 <asp:Label ID="Label24" runat="server" Text="File No :"></asp:Label>
             </td>
             <td class="style8">
                 <asp:TextBox ID="fileE" runat="server" Height="28px" Width="150px"></asp:TextBox>
             </td>
             <td class="style2">
                 <asp:Label ID="Label28" runat="server" CssClass="style3" Text="Upload Picture :"></asp:Label>
             </td>
             <td>
                 <asp:FileUpload ID="picE" runat="server" BorderStyle="Double" 
                    ToolTip="upload your pic" />
             </td>
         </tr>
        </table>
        </asp:Panel>


</asp:Content>

