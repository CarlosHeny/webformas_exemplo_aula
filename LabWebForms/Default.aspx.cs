using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabWebForms
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //var teste = Request.QueryString["teste"].ToString();
            inputTexto.Value = "danilo";
            txtNome.Text = "um input";

            gridClientes.DataSource = Cliente.Todos();
            gridClientes.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtNome.Text = "alguma coisa";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/about.aspx");
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            new Cliente()
            {
                Nome = txtNomeForm.Text,
                Telefone = inputTelefone.Value
            }.Salvar();

            
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "sucesso", "<script>alert('O cliente foi cadastrado com sucesso !!!')</script>");

            gridClientes.DataSource = Cliente.Todos();
            gridClientes.DataBind();

            foreach (var c in Cliente.Todos())
            {
                bodyTable.InnerHtml += "<tr>";
                bodyTable.InnerHtml += $"<td>{c.Nome}</td>";
                bodyTable.InnerHtml += $"<td>{c.Telefone}</td>";
                bodyTable.InnerHtml += "</tr>";
            }
        }
    }
}