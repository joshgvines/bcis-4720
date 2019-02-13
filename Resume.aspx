<%@ Page Title="Resume" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Resume.aspx.cs" Inherits="Resume" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <!--nav spacer-->
        <div class="secES"></div>

        <!--PDF object-->
        <div class="pdf"><object data="Resume.pdf" type="application/pdf"></object></div>

        <!--Info-->
        <div class="subSecL">
            <h1>My Resume</h1>
            <p>Link: &nbsp &nbsp<a href="Resume.pdf">Resume.pdf</a></p>
        </div>

        <div class="secS"></div>

</asp:Content>

