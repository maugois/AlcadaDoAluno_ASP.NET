using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Data;
using MySqlX.XDevAPI;
using static System.Net.Mime.MediaTypeNames;

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
        }

        public void Login()
        {

        }

        public void Logout()
        {

        }

        public void ObterPorId()
        {

        }

        public void DeletarConta()
        {

        }
    }
}