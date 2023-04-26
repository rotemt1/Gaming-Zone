<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <center><h1><font size="26" face="Impact" color="red">Login</font></h1></center>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form  id="LoginForm"  name="LoginForm"  method ="post" action="#" runat="server">
        <center>
        <table>
            <tr>
                <td>User name:</td>
                <td><input type="text" id="user" name="userName" required/></td>
            </tr>
              <tr>
                <td>Password:</td>
                <td><input type="password" id="password" name="password" required/></td>
            </tr>
            <tr>
               <td><input type="submit"  id="submit"  name="submit" value="Sumbit" /></td>
            </tr>
            <tr>
              <td> 
             <%=response %>
           </td>

           </tr>
        </table>
</center>
    </form>
</asp:Content>

