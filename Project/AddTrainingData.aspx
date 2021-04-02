<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddTrainingData.aspx.cs" Inherits="AddTrainingData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    
        <div class="row">
            <div class="col-md-12 text-center">
                <br />
                <asp:Label ID="Label8" runat="server" Font-Size="X-Large" Text="ADD TRAINING DATA"></asp:Label>
                <br />
                <hr />
            </div>
            </div>

    <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label6" runat="server"  Text="Disease"></asp:Label>:-
            </div>
            <div class="col-md-3 text-left"  >
                <asp:TextBox ID="txtdisease" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <div class="col-md-3"  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ControlToValidate="txtdisease"  ErrorMessage="*Enter Disease Name"></asp:RequiredFieldValidator>
                </div>
              
            </div>
    <br />
     <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label7" runat="server"  Text="Age"></asp:Label>:-
            </div>
            <div class="col-md-3 text-left"  >
                <asp:TextBox ID="txtage" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <div class="col-md-3"  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ControlToValidate="txtage"  ErrorMessage="*Enter Age"></asp:RequiredFieldValidator>
                </div>
              
            </div>
    <br />
     <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label9" runat="server"  Text="BMI"></asp:Label>:-
            </div>
            <div class="col-md-3 text-left"  >
                <asp:TextBox ID="txtbmi" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                  <div class="col-md-3"  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ForeColor="Red" ControlToValidate="txtbmi"  ErrorMessage="*Enter BMI"></asp:RequiredFieldValidator>
                </div>
              
            </div>
    <br />
        <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label1" runat="server"  Text="Headache"></asp:Label>:-
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbheadache" CssClass="custom-radio" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> HIGH </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MODERATE </asp:ListItem>
                     <asp:ListItem Value="1"> NORMAL </asp:ListItem>
                </asp:RadioButtonList>
                </div>
                  <div class="col-md-3"  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="Rbheadache"  ErrorMessage="*Select Headache"></asp:RequiredFieldValidator>
                </div>
              
            </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label2" runat="server" Text=" Fatique"></asp:Label>:-
            </div>
           
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbfatique" runat="server" RepeatDirection="Horizontal" >
                   <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                     
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 "  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"  ControlToValidate="Rbfatique"  ErrorMessage="*Select Fatique"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label3" runat="server" Text="Nausea"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbnausea" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 "  >
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red"  ControlToValidate="Rbnausea"  ErrorMessage="*Select Nausea"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label4" runat="server" Text="Vomiting"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbvomiting" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red"  ControlToValidate="Rbvomiting"  ErrorMessage="*Select Vomiting"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label5" runat="server" Text="Chills"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbchills" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"  ControlToValidate="Rbchills"  ErrorMessage="*Select Chills"></asp:RequiredFieldValidator>
                </div>

        </div>
       
        <br />
      


      
        <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label10" runat="server"  Text="Cough"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbcough" CssClass="custom-radio" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red"  ControlToValidate="Rbcough"  ErrorMessage="*Select Cough"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br />
        <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label11" runat="server" Text="Sore Throat"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbsorethroat" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red"  ControlToValidate="Rbsorethroat"  ErrorMessage="*Select Sore Throat"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label12" runat="server" Text="Stiffy Nose"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbstiffynose" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red"  ControlToValidate="Rbstiffynose"  ErrorMessage="*Select Stiffy Nose"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label13" runat="server" Text="Redness"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbredness" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>

             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ForeColor="Red"  ControlToValidate="Rbredness"  ErrorMessage="*Select Redness"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label14" runat="server" Text="Irritation"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbirritation" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ForeColor="Red"  ControlToValidate="Rbirritation"  ErrorMessage="*Select Irritation"></asp:RequiredFieldValidator>
                </div>

        </div>
        <br />
    <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label15" runat="server" Text="Itching"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbitching" runat="server" RepeatDirection="Horizontal" >
                   <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
             <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ForeColor="Red"  ControlToValidate="Rbitching"  ErrorMessage="*Select Itching">
                  </asp:RequiredFieldValidator>
                </div>

        </div>
       
      
 <br />


             
      
        <div class="row">
            <div class="col-md-5 text-right"> 
             
                <asp:Label ID="Label18" runat="server"  Text="Rash"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbrash" CssClass="custom-radio" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ForeColor="Red"  ControlToValidate="Rbrash"  ErrorMessage="*Select Rash">
                  </asp:RequiredFieldValidator>
                </div>

        </div>
       
        <br /><div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label20" runat="server" Text="Stomach Cramps"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbstomachcramps" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ForeColor="Red"  ControlToValidate="Rbstomachcramps"  ErrorMessage="*Select Stomach Cramps">
                  </asp:RequiredFieldValidator>
                </div>

        </div>
        <br />
                <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label21" runat="server" Text="Stomach Pain"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbstomachpain" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
                    <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ForeColor="Red"  ControlToValidate="Rbstomachpain"  ErrorMessage="*Select Stomach Pain">
                  </asp:RequiredFieldValidator>
                </div>

        </div>
        <br />
                <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label22" runat="server" Text="Strainig To Pass Stools"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbstrainigstools" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ForeColor="Red"  ControlToValidate="Rbstrainigstools"  ErrorMessage="*Select Strainig To Pass Stools">
                  </asp:RequiredFieldValidator>
            </div>

        </div>
        <br />
                <div class="row">
            <div class="col-md-5 text-right"> 
                <asp:Label ID="Label23" runat="server" Text="Dehydration"></asp:Label>
            </div>
            <div class="col-md-4 text-left"  >
                <asp:RadioButtonList ID="Rbdehydration" runat="server" RepeatDirection="Horizontal" >
                    <asp:ListItem Value="5" style="margin-right:20px"> YES </asp:ListItem>
                    <asp:ListItem Value="1" style="margin-right:20px"> NO </asp:ListItem>
                    <asp:ListItem Value="3" style="margin-right:20px"> MAY BE </asp:ListItem>
                </asp:RadioButtonList>
            </div>
                    <div class="col-md-3 ">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ForeColor="Red"  ControlToValidate="Rbdehydration"  ErrorMessage="*Select Dehydration">
                  </asp:RequiredFieldValidator>
            </div>

        </div>
       
        <br />
    

         <div class="row">
            <div class="col-md-12 text-center">
                
                <asp:Button ID="btnadd" runat="server" CssClass="btn btn-success" Text="ADD DATA"  OnClick="btnadd_Click"/>
                <br />
                <hr />
            </div>
            </div>

</asp:Content>

