<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>


<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div >
         <div class="col-md-12">
             <br />
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-11 text-center">
                    <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="Admin Login "></asp:Label>
                    <hr />
                </div>

            </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"><asp:Label ID="Lable1" runat="server" Text="ID  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="id" CssClass="form-control" runat="server"></asp:TextBox></div>
           </div>

            <br />
            <div class="row">
            <div class="col-md-6 text-right"><asp:Label ID="Label3" runat="server" Text="Password :-"></asp:Label></div>
             <div class="col-md-3 text-left"><asp:TextBox ID="pass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></div>
           </div>
            <br />
             <div class="row">
            <div class="col-md-6 text-right"><asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Login" onclick="Button1_Click" /></div>
             <div class="col-md-3 text-left"><asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" onclick="Button2_Click" Text="Cancel" /></div>
           </div>
<br />
             <br />
    </div>

</asp:Content>