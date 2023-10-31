using AlcadaDoAluno.Src.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlcadaDoAluno.Src.views
{
    public partial class cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno(
                    txtRa.Text,
                    txtNome.Text,
                    txtRg.Text,
                    txtCpf.Text,
                    txtDataNasc.Text,
                    txtEmail.Text,
                    txtSenha.Text
                );

            if (aluno.Inserir())
            {
                mensagemStatusInserirCadastro.ForeColor = System.Drawing.Color.Green;
                mensagemStatusInserirCadastro.Text = "Cadastro efetuado com sucesso!";
            }
            else
            {
                mensagemStatusInserirCadastro.ForeColor = System.Drawing.Color.Red;
                mensagemStatusInserirCadastro.Text = "Erro no cadastro! Tente novamente.";
            }
        }
    }
}