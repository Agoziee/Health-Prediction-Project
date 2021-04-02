<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDisease.aspx.cs" Inherits="ViewDisease" %>

<asp:Content ID="body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div> 

    <br /> <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="Disease And Its Symptoms"></asp:Label>
    <hr />
    
    <br />
    <br />
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" HeaderStyle-BackColor="#c0c0c0" runat="server"  Width="80%">
       
    </asp:GridView>
    <br />

</div>
</asp:Content>