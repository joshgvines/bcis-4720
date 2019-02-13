<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!--Nav Spacer-->
    <div class="secES"></div>

    <!--Content-->
    <div class="subSecFit">
        <h1>Response Page</h1>
        <p><asp:Label ID="User_Label" runat="server" style="color: blue;"></asp:Label></p><br>

        <!--<p><asp:Label ID="Email_Label" runat="server" style="color: blue;"></asp:Label></p>-->
    </div>

</asp:Content>

