using AlcadaDoAluno.Src.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AlcadaDoAluno.Src.views
{
    public partial class indexCli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();

            if (!aluno.BuscarSessao())
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();

            aluno.Logout();

            if (!aluno.BuscarSessao())
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void btnDeletar_Click(object sender, EventArgs e)
        {
            Aluno aluno = new Aluno();
            aluno.Ra = HttpContext.Current.Session["Login"].ToString();
            aluno.DeletarConta();
            

            if (!aluno.BuscarSessao())
            {
                Response.Redirect("index.aspx");
            }
        }
    }
}