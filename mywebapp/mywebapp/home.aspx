<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="mywebapp.home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><title>My Page!</title></head>
<body>
    <h1>Web App</h1>
    <h2>Cadastrar cliente:</h2>
    <form runat="server">
        <label for="txtNome">Nome:</label>
        <input runat="server" type="text" name="Nome" id="txtNome" />
        <br />
        <label for="txtSobrenome">Sobrenome:</label>
        <input runat="server" type="text" name="Sobrenome" id="txtSobrenome" />
        <br />
        <label for="txtIdade">Idade:</label>
        <input runat="server" type="number" name="Idade" id="txtIdade" />
        <br />
        <label for="cmbSexo">Sexo:</label>
        <select runat="server" name="Sexo" id="sltSexo">
            <option value=""></option>
            <option value="F">F</option>
            <option value="M">M</option>
        </select>
        <br />
        <label for="txtEstado">Estado:</label>
        <input runat="server" type="text" name="Estado" id="txtEstado" />
        <br />
        <asp:Button runat="server" Text="Cadastrar" OnClick="OnClick" />
    </form>
    <p runat="server" id="msg"></p>
    <h2>Dados:</h2>
    <asp:Table ID="tblDados" runat="server" />
</body>
</html>
