using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Data;
using MySqlX.XDevAPI;
using static System.Net.Mime.MediaTypeNames;
using Newtonsoft.Json;
using System.Drawing;

namespace AlcadaDoAluno.Src.model
{
    public class Aluno
    {
        // Atributos
        private int id;
        private string ra;
        private string nome;
        private string rg;
        private string cpf;
        private string dataNasc;
        private string email;
        private string senha;

        // Propriedades
        public int Id { get => id; set => id = value; }
        public string Ra { get => ra; set => ra = value; }
        public string Nome { get => nome; set => nome = value; }
        public string Rg { get => rg; set => rg = value; }
        public string Cpf { get => cpf; set => cpf = value; }
        public string DataNasc { get => dataNasc; set => dataNasc = value; }
        public string Email { get => email; set => email = value; }
        public string Senha { get => senha; set => senha = value; }

        // Metódos construtores
        public Aluno()
        {
        }

        public Aluno(int id, string ra, string nome, string rg, string cpf, string dataNasc, string email, string senha)
        {
            Id = id;
            Ra = ra;
            Nome = nome;
            Rg = rg;
            Cpf = cpf;
            DataNasc = dataNasc;
            Email = email;
            Senha = senha;
        }

        public Aluno(int id, string ra, string nome, string rg, string cpf, string dataNasc, string email)
        {
            Id = id;
            Ra = ra;
            Nome = nome;
            Rg = rg;
            Cpf = cpf;
            DataNasc = dataNasc;
            Email = email;
        }

        public Aluno(string ra, string nome, string rg, string cpf, string dataNasc, string email, string senha)
        {
            Ra = ra;
            Nome = nome;
            Rg = rg;
            Cpf = cpf;
            DataNasc = dataNasc;
            Email = email;
            Senha = senha;
        }

        // Métodos
        public bool Inserir()
        {
            MySqlCommand cmd = null;
            bool teste = false;

            try
            {
                cmd = DataBase.Abrir();

                cmd.CommandText = "insert alunos (ra, nome, rg, cpf, dataNasc, email, senha) " +
                   "values(@ra, @nome, @rg, @cpf, @dataNasc, @email, @senha)";

                cmd.Parameters.Add("@ra", MySqlDbType.VarChar).Value = Ra;
                cmd.Parameters.Add("@nome", MySqlDbType.VarChar).Value = Nome;
                cmd.Parameters.Add("@rg", MySqlDbType.VarChar).Value = Rg;
                cmd.Parameters.Add("@cpf", MySqlDbType.VarChar).Value = Cpf;
                cmd.Parameters.Add("@dataNasc", MySqlDbType.Date).Value = DataNasc;
                cmd.Parameters.Add("@email", MySqlDbType.VarChar).Value = Email;
                cmd.Parameters.Add("@senha", MySqlDbType.VarChar).Value = Senha;

                if (cmd.ExecuteNonQuery() > 0)
                {
                    cmd.CommandText = "select @@identity";
                    Id = Convert.ToInt32(cmd.ExecuteScalar());
                    DataBase.Fechar(cmd);

                    teste = true;
                }
            }
            catch (Exception)
            {
                // Mostra o erro
            }

            return teste;
        }

        public void Atualizar()
        {
            /*
            var cmd = DataBase.Abrir();

            cmd.CommandText = "update alunos set " +
                "ra = @ra, nome = @nome, rg = @rg, cpf = @cpf, dataNasc = @dataNasc, email = @email, senha = @senha where id = " + Id;

            cmd.Parameters.Add("@ra", MySqlDbType.VarChar).Value = Ra;
            cmd.Parameters.Add("@nome", MySqlDbType.VarChar).Value = Nome;
            cmd.Parameters.Add("@rg", MySqlDbType.VarChar).Value = Rg;
            cmd.Parameters.Add("@cpf", MySqlDbType.VarChar).Value = Cpf;
            cmd.Parameters.Add("@dataNasc", MySqlDbType.Date).Value = DataNasc;
            cmd.Parameters.Add("@email", MySqlDbType.VarChar).Value = Email;
            cmd.Parameters.Add("@senha", MySqlDbType.VarChar).Value = Senha;

            cmd.ExecuteNonQuery();

            DataBase.Fechar(cmd);
            */
        }

        public Aluno ObterPorRa(string _ra, string _senha)
        {
            MySqlCommand cmd = null;

            try
            {
                cmd = DataBase.Abrir();

                cmd.CommandText = "select * from alunos where ra = @ra and senha = @senha";

                cmd.Parameters.Add("@ra", MySqlDbType.VarChar).Value = _ra;
                cmd.Parameters.Add("@senha", MySqlDbType.VarChar).Value = _senha;

                var dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Aluno aluno = new Aluno(
                        dr.GetInt32(0),
                        dr.GetString(1),
                        dr.GetString(2),
                        dr.GetString(3),
                        dr.GetString(4),
                        dr.GetString(5),
                        dr.GetString(6)
                    );

                    dr.Close();
                    DataBase.Fechar(cmd);

                    return aluno;
                }
            }
            catch (Exception)
            {
                // Mostra o erro
            }

            return null;
        }

        public void IniciarSessao(Aluno _aluno)
        {
            string valor = JsonConvert.SerializeObject(_aluno);
            HttpContext.Current.Session["Login"] = valor;
        }

        public bool BuscarSessao()
        {
            var valor = HttpContext.Current.Session["Login"];
            
            if (valor != null)
            {
                return true;
            }

            return false;
        }

        public void RemoverSessao()
        {
            HttpContext.Current.Session.Remove("Login");
        }

        public void Login()
        {
            var aluno = ObterPorRa(Ra, Senha);

            if (aluno != null)
            {
                IniciarSessao(aluno);
            }
        }

        public void Logout()
        {
            RemoverSessao();
        }

        public bool DeletarConta(int _id)
        {
            MySqlCommand cmd = null;

            try
            {
                cmd = DataBase.Abrir();

                cmd.CommandText = "delete from alunos where id = @id";

                cmd.Parameters.Add("@id", MySqlDbType.Int32).Value = _id;

                if (cmd.ExecuteNonQuery() > 0)
                {
                    RemoverSessao();
                    DataBase.Fechar(cmd);

                    return true;
                }
            }
            catch (Exception)
            {
                // Mostra o erro
            }

            return false;
        }
    }
}