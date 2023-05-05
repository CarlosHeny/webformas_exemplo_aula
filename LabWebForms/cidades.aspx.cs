using LabWebForms.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabWebForms
{
    public partial class _Cidade : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var estado = new Estado() { Id = Convert.ToInt32(Request.QueryString["id_estado"]) };

            ddlCidades.DataSource = Cidade.Todos(estado);
            ddlCidades.DataBind();
            ddlCidades.Items.Insert(0, new ListItem("[Selecione]", "0"));
        }
    }
}