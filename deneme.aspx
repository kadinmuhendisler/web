<%@ Page Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="deneme.aspx.cs" Inherits="deneme" Title="Untitled Page" %>

<%@ Register Assembly="EO.Web" Namespace="EO.Web" TagPrefix="eo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <eo:grid id="Grid1" runat="server" font-bold="False" font-italic="False" font-overline="False"
        font-strikeout="False" font-underline="False"></eo:grid>
    <eo:popupcalendar id="PopupCalendar1" runat="server" disableddates="" selecteddates=""></eo:popupcalendar>
</asp:Content>

