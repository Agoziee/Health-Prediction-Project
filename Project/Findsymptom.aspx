<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Findsymptom.aspx.cs" Inherits="Findsymptom" %>

<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <br />
    <br />
       <center><img src="images/dp.jpg" /></center>
    
    <br />
   <div class="row">
       <div class="col-md-7 text-right">
           <asp:Label ID="Label2" runat="server" 
            Text="Please Enter A Symptom (any one symptom, leave no blank spaces before and after it) :-"></asp:Label>
       </div>
       <div class="col-md-5 text-left">
           <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server" Width="167px"></asp:TextBox>
       </div>
    
       </div>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" onclick="Button1_Click" Text="Next" 
            Width="137px" />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel4" runat="server" Height="300px" Visible="False" 
            BackColor="#ccccff" BorderColor="White">
        <br />
        <asp:Label ID="Label3" runat="server" 
            Text="Are you experiencing any of these symptoms too ?" Font-Bold="True"></asp:Label>
            
        <asp:Label ID="Label4"  runat="server" Font-Size="Large" ForeColor="#CC0000" 
            Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <div class="row">
            <div class="col-md-6 text-right">
                 <asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Please Select  :-"></asp:Label>
            </div>
            <div class="col-md-6 text-left">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server"  Width="200px">
            <asp:ListItem>--Select--</asp:ListItem>
        </asp:DropDownList>
            </div>

        </div>
       
       
        <br />
        <asp:Button ID="Button2" CssClass="btn btn-info"  runat="server"  onclick="Button2_Click" 
            Text="Next"  />
        &nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" CssClass="btn btn-info"  onclick="Button3_Click" 
            Text="I have None Of Above Symptoms"  />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />
        <asp:Panel ID="Panel5" runat="server" Height="380px" Visible="False" 
            BackColor="White">
            <br />
            <asp:Label ID="Label10" runat="server" Text="Analysis Complete:" 
                Font-Bold="True" ForeColor="#40B9EE"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label14" runat="server" Font-Bold="True" 
                Text="Suspected Diseases:"></asp:Label>
            <br />
            &nbsp;<asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Height="41px" ReadOnly="True" 
                TextMode="MultiLine" Width="241px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" 
                
                Text="System Prediction(You have Diseases/Disorders Related to one or More of the Following)" 
                Font-Bold="True"></asp:Label>
&nbsp;
            <asp:Label ID="Label13" Font-Size="X-Large" ForeColor="Blue" runat="server"></asp:Label>
            <br />
            <br />
            <div class="col-md-12">
                <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover" HeaderStyle-BackColor="#c0c0c0" runat="server" width="80%">
                    
                </asp:GridView>
                <br />
                <asp:Label ID="Label15" runat="server" Font-Size="XX-Large" Text="No Doctors found" Visible="False"></asp:Label>
                <br />
           </div>
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</div>
</asp:Content>