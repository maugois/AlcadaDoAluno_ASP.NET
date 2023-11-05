using AlcadaDoAluno.Src.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlcadaDoAluno.Src.views
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();

            if (aluno.BuscarSessao())
            {
                Response.Redirect("indexCli.aspx");
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();

            aluno.Ra = txtRa.Text;
            aluno.Senha = txtSenha.Text;

            aluno.Login();

            if (aluno.BuscarSessao())
            {
                Response.Redirect("indexCli.aspx");
            }
        }
    }
}