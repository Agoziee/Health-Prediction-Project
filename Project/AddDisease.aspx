<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddDisease.aspx.cs" Inherits="AddDisease" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

        <div class="col-md-12">
             <br />
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-11 text-center">
                    <asp:Label ID="Label7" CssClass="bg-info" runat="server" Font-Size="X-Large"
                        Text="Add Disease "></asp:Label>
                    <hr />
                </div>

            </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"> <asp:Label ID="Label4" runat="server" Text="Disease ID  :-  "></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox></div>
           </div>

            <br />
            <div class="row">
            <div class="col-md-6 text-right"> <asp:Label ID="Label2" runat="server" Text="Name of Disease  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox></div>
           </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"><asp:Label ID="Label3" runat="server" Text="Symptoms of Disease  :-"></asp:Label></div>
            <div class="col-md-3 text-left"><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Height="55px" TextMode="MultiLine" ></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Font-Size="Small" ForeColor="Red" 
        Text="Septated By &quot;,&quot;"></asp:Label>
            </div>
           </div>
            <br />
            <div class="row">
            <div class="col-md-6 text-right"> <asp:Label ID="Label6" runat="server" Text="Type of Disease  :-"></asp:Label></div>
            <div class="col-md-3 text-left"> <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" >
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
            <div class="col-md-7 text-right">
                 <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" onclick="Button1_Click" Text="Submit" />
            </div>
           </div>
             <br />
        </div>
   
    

   
   

</div>
</asp:Content>