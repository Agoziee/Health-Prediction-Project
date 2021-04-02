<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDoc.aspx.cs" Inherits="AddDoc" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        
        <div class="col-md-12">
            <br /> 
            <div class="row">
                <div class="col-md-1"></div>
            <div class="col-md-11 text-center"> <asp:Label ID="Label1" CssClass="bg-info" runat="server" Font-Size="X-Large"
            Text="Add Doctor "></asp:Label></div>
                <hr />
            
           </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"> <asp:Label ID="Label2" runat="server" Text="Doc ID  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox></div>
           </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"> <asp:Label ID="Label3" runat="server" Text="Name  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox></div>
           </div>
            
             <br />
            <div class="row">
            <div class="col-md-6 text-right"><asp:Label ID="Label4" runat="server" Text="Address  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"  TextMode="MultiLine" ></asp:TextBox></div>
           </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"> <asp:Label ID="Label5" runat="server" Text="Mobile No  :-"></asp:Label></div>
            <div class="col-md-3 text-left"> <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox></div>
           </div>

            <br />

            <div class="row">
            <div class="col-md-6 text-right"> <asp:Label ID="Label7" runat="server" Text="Categorie  :-"></asp:Label></div>
            <div class="col-md-3 text-left"> <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
            <asp:ListItem>--Select--</asp:ListItem>
            <asp:ListItem>Heart</asp:ListItem>
            <asp:ListItem>Brain</asp:ListItem>
            <asp:ListItem>Physio</asp:ListItem>
            <asp:ListItem>Bone</asp:ListItem>
            <asp:ListItem>Infectious</asp:ListItem>
            <asp:ListItem>STD</asp:ListItem>
        </asp:DropDownList></div>
           </div>
        
        
    <br />
     <div class="row">
            <div class="col-md-6 text-right">  <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" OnClick="Button2_Click" Text="Submit" /></div>
            <div class="col-md-3 text-left"> <asp:Button ID="Button3" CssClass="btn btn-danger" runat="server" Text="Cancel" /></div>
           </div>
   </div>
    &nbsp;
        
    &nbsp;
    <br />
        <br />

    </div>
</asp:Content>
