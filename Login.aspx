<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!--Nav Spacer-->
    <div class="secES"></div>
    <div class="secES"></div>

    <!--Content-->
    <div class="subSecFitLog">

        <!--Login Form-->
        <div class="login">

            <h1>Login</h1>

            <!--User Name-->
            <asp:TextBox ID="TextBox1" placeholder="Enter Username" runat="server"/><br>
            <asp:TextBox ID="TextBox2" placeholder="Enter Password" runat="server" TextMode="Password"/><br>

            <!--Buttons-->
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Btn1_Click" style="width: 91px;"/>
            <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Btn2_Click" style="width: 91px;"/><br>

            <!--Incorrect Labels-->
            <asp:Label ID="Pass_Label" runat="server" style="color: red;"></asp:Label><br><br><br />
            <asp:Label ID="Label1" runat="server" CssClass="Login_lbl" Font-Bold="True" ForeColor="#FF6666" Font-Names="Arial" Font-Size="Small"></asp:Label>

        </div>
        
    </div>

    <div class="secL"></div>

    <!--SQL-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" 
        SelectCommand="SELECT [Email], [Password], [FName], [LName] FROM [User] WHERE ([Email] = @Email) AND ([Password]=@Password)">
        <SelectParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" />
        </SelectParameters>
    </asp:SqlDataSource>
  
</asp:Content>