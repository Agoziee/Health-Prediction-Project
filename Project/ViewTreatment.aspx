<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewTreatment.aspx.cs" Inherits="ViewTreatment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>


         <div class="col-md-12">
             <br />
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-11 text-center">
                    <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="TREATMENT "></asp:Label>
                    <hr />
                </div>

            </div>
            <br />
            <div class="row">
            <div class="col-md-3 text-right"><asp:Label ID="Label2" runat="server" Text="DIASEASE :-"></asp:Label></div>
            <div class="col-md-8 text-left"><asp:TextBox ID="txtdiasease" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox></div>
           </div>
            <br />
            <div class="row">
            <div class="col-md-3 text-right"><asp:Label ID="Label3" runat="server" Text="SYMPTOMS  :-"></asp:Label></div>
            <div class="col-md-8 text-left"> <asp:TextBox ID="txtsymptoms" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox></div>
           </div>
             <br />
            <div class="row">
            <div class="col-md-3 text-right"><asp:Label ID="Label4" runat="server" Text="TREATMENTS  :-"></asp:Label></div>
            <div class="col-md-8 "><asp:TextBox ID="txttreatment" CssClass="form-control" runat="server" Height="200px" TextMode="MultiLine" 
             ReadOnly="True"></asp:TextBox></div>
           </div>
             <br />
           
             
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>

