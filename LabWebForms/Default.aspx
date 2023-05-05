<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Default.aspx.cs" Inherits="LabWebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <p>&nbsp;<asp:Label ID="Label1" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
            <input type="text" id="inputTexto" runat="server"/>
            <div id="dvTest" runat="server">Teste</div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <button type="button" onclick="preencherInput()">Button Client</button>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Redirect Server" />
            <a href="/about.aspx" style="border: 1px solid #000;padding: 5px;border-radius: 4px;background-color: aqua;color: blue;text-decoration: none;">redirect html</a>
            <button type="button" onclick="window.location.href='/about'">redirect Client</button>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/About.aspx" runat="server">HyperLink</asp:HyperLink>
        </p>
    </div>

    <% var nome = "danilo"; %>

    <script>
        const preencherInput = () => {
            document.getElementById("MainContent_txtNome").value = "Um texto - <%= nome %>";
        }
    </script>

    <div class="row">
        <div class="col-md-4">
            <h2>Cadastro Clientes</h2>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Nome: "></asp:Label>
                <asp:TextBox ID="txtNomeForm" runat="server"></asp:TextBox>
            </p>
            <p>
                Telefone: <input type="tel" id="inputTelefone" runat="server" />

            </p>
            <p>
                Estado:
                <asp:DropDownList ID="ddlEstado" onchange="carregaCidades(this)" runat="server" DataTextField="Nome" DataValueField="Id" OnSelectedIndexChanged="ddlEstado_SelectedIndexChanged" AutoPostBack="false" >
                </asp:DropDownList>

            </p>
            <p>
                Cidade: <asp:DropDownList ID="ddlCidade" runat="server" DataTextField="Nome" DataValueField="Id">
                </asp:DropDownList>

            </p>
            <p>
                <asp:Button ID="btnCadastrar" runat="server" OnClick="btnCadastrar_Click" Text="Cadastrar" />

            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                <asp:GridView ID="gridClientes" runat="server">
                </asp:GridView>

                <table>
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Telefone</th>
                        </tr>
                    </thead>
                    <tbody id="bodyTable" runat="server">

                    </tbody>
                </table>

            </p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>
