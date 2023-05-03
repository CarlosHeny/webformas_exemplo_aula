using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LabWebForms
{
    public class Cliente
    {
        private static List<Cliente> clientes = new List<Cliente>();

        public string Nome { get; set; }
        public string Telefone { get; set; }

        public void Salvar()
        {
            clientes.Add(this);
        }

        public static List<Cliente> Todos()
        {
            return clientes;
        }
    }
}