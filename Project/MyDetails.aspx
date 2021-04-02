<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyDetails.aspx.cs" Inherits="MyDetails" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>


         <div class="col-md-12">
             <br />
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-11 text-center">
                    <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="Details "></asp:Label>
                    <hr />
                </div>

            </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"><asp:Label ID="Label2" runat="server" Text="User Id  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox></div>
           </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"><asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label></div>
            <div class="col-md-3 text-left"> <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox></div>
           </div>
             <br />
            <div class="row">
            <div class="col-md-6 text-right"><asp:Label ID="Label4" runat="server" Text="Address  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Height="43px" TextMode="MultiLine" 
            width= "241px" ReadOnly="True"></asp:TextBox></div>
           </div>
             <br />
            <div class="row">
            <div class="col-md-6 text-right"><asp:Label ID="Label5" runat="server" Text="Mobile No  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox></div>
           </div>
               <br />
            <div class="row">
            <div class="col-md-6 text-right"> <asp:Label ID="Label6" runat="server" Text="EMail  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" ontextchanged="TextBox5_TextChanged" 
            ReadOnly="True"></asp:TextBox></div>
           </div>
             
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>