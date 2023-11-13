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

            if (aluno.Login() == false)
            {
                labMensagem.Text = "Erro! Não foi possível efetutar Login (RA ou Senha incorreta).";
                labMensagem.ForeColor = System.Drawing.Color.Red;
            }

            if (aluno.BuscarSessao())
            {
                Response.Redirect("indexCli.aspx");
            }
        }
    }
}