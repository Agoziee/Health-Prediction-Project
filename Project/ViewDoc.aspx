<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDoc.aspx.cs" Inherits="ViewDoc" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<div>

    <br />
     <div class="col-md-12">
            <br /> 
            <div class="row">
                <div class="col-md-1"></div>
            <div class="col-md-11 text-center"> <asp:Label ID="Label2" CssClass="bg-info" runat="server" Font-Size="X-Large"
            Text="Doctor Details "></asp:Label></div>
            <hr />
           </div>
         <br />
    <br />
         </div>
    
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" HeaderStyle-BackColor="#c0c0c0"  runat="server" Width="80%">
        
    </asp:GridView>
    <br />

</div>
</asp:Content>