using AlcadaDoAluno.Src.model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlcadaDoAluno.Src.views
{
    public partial class dadosPessoais : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();

            if (!aluno.BuscarSessao())
            {
                Response.Redirect("index.aspx");
            }

            var dadosSessao = JsonConvert.DeserializeObject<Aluno>((string)HttpContext.Current.Session["Login"]);

            txtRa.Text = dadosSessao.Ra;
            txtNome.Text = dadosSessao.Nome;
            txtRg.Text = dadosSessao.Rg;
            txtCpf.Text = dadosSessao.Cpf;
            txtDataNasc.Text = dadosSessao.DataNasc;
            txtEmail.Text = dadosSessao.Email;
        }

        protected void btnAlterarRa_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Ra = txtRaEditar.Text;
            aluno.Id = JsonConvert.DeserializeObject<Aluno>((string)HttpContext.Current.Session["Login"]).Id;
            
            if (aluno.Atualizar("ra"))
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                labMensagem.Text = "Erro! Não foi possível efetutar atualização.";
                labMensagem.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnAlterarNome_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Nome = txtNomeEditar.Text;
            aluno.Id = JsonConvert.DeserializeObject<Aluno>((string)HttpContext.Current.Session["Login"]).Id;

            if (aluno.Atualizar("nome"))
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                labMensagem.Text = "Erro! Não foi possível efetutar atualização.";
                labMensagem.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnAlterarRg_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Rg = txtRgEditar.Text;
            aluno.Id = JsonConvert.DeserializeObject<Aluno>((string)HttpContext.Current.Session["Login"]).Id;

            if (aluno.Atualizar("rg"))
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                labMensagem.Text = "Erro! Não foi possível efetutar atualização.";
                labMensagem.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnAlterarCpf_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Cpf = txtCpfEditar.Text;
            aluno.Id = JsonConvert.DeserializeObject<Aluno>((string)HttpContext.Current.Session["Login"]).Id;

            if (aluno.Atualizar("cpf"))
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                labMensagem.Text = "Erro! Não foi possível efetutar atualização.";
                labMensagem.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnAlterarDataNasc_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.DataNasc = txtDataNascEditar.Text;
            aluno.Id = JsonConvert.DeserializeObject<Aluno>((string)HttpContext.Current.Session["Login"]).Id;

            if (aluno.Atualizar("dataNasc"))
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                labMensagem.Text = "Erro! Não foi possível efetutar atualização.";
                labMensagem.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnAlterarEmail_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Email = txtEmailEditar.Text;
            aluno.Id = JsonConvert.DeserializeObject<Aluno>((string)HttpContext.Current.Session["Login"]).Id;

            if (aluno.Atualizar("email"))
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                labMensagem.Text = "Erro! Não foi possível efetutar atualização.";
                labMensagem.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btnAlterarSenha_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Senha = txtSenhaEditar.Text;
            aluno.Id = JsonConvert.DeserializeObject<Aluno>((string)HttpContext.Current.Session["Login"]).Id;

            if (aluno.Atualizar("senha"))
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                labMensagem.Text = "Erro! Não foi possível efetutar atualização.";
                labMensagem.ForeColor = System.Drawing.Color.Red;
            }
        }



        protected void btnFecharRa_Click(object sender, EventArgs e)
        {
            txtRaEditar.Text = "";
        }

        protected void btnFecharNome_Click(object sender, EventArgs e)
        {
            txtNomeEditar.Text = "";
        }

        protected void btnFecharRg_Click(object sender, EventArgs e)
        {
            txtRgEditar.Text = "";
        }

        protected void btnFecharCpf_Click(object sender, EventArgs e)
        {
            txtCpfEditar.Text = "";
        }

        protected void btnFecharDataNasc_Click(object sender, EventArgs e)
        {
            txtDataNascEditar.Text = "";
        }

        protected void btnFecharEmail_Click(object sender, EventArgs e)
        {
            txtEmailEditar.Text = "";
        }

        protected void btnFecharSenha_Click(object sender, EventArgs e)
        {
            txtSenhaEditar.Text = "";
        }
    }
}