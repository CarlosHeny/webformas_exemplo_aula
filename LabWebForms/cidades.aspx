<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="cidades.aspx.cs" Inherits="LabWebForms._Cidade" %>

 <form id="form1" runat="server">
     <asp:DropDownList ID="ddlCidades" runat="server" DataTextField="Nome" DataValueField="Id">
     </asp:DropDownList>
</form>
