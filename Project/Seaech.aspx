<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Seaech.aspx.cs" Inherits="Seaech" %>

<asp:Content ID="Body" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div>

    <br />
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Font-Underline="True" 
        ForeColor="#FF9900" Text="Health Analiysis"></asp:Label>
        <hr />
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Symptom 1  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Symptom 2  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Symptom 3  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Symptom 4  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Symptom 5  :-"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Search" onclick="Button1_Click" />
    <br />
    <br />
    <asp:Panel ID="Panel5" runat="server" Height="135px" Visible="False">
        <asp:Label ID="Label10" runat="server" Text="You Might Have Any One of this"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox6" runat="server" Height="41px" ReadOnly="True" 
            TextMode="MultiLine" Width="203px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label11" runat="server" Text="Please consult a "></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/SearchD.aspx">Doctor</asp:LinkButton>
    </asp:Panel>
    <br />
    <asp:Panel ID="Panel4" runat="server" Height="31px" Visible="False">
        <asp:Label ID="Label9" runat="server" 
            Text="Sorry we could not recognize your problem, Please consult a "></asp:Label>
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/SearchD.aspx">Doctor</asp:LinkButton>
    </asp:Panel>
    <br />

</div>
</asp:Content>