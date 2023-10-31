using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Data;

namespace AlcadaDoAluno.Src.model
{
    public class DataBase
    {
        // Atributo
        private static string strConn;
        
        // Metódos
        public static MySqlCommand Abrir()
        {
            strConn = @"server=127.0.0.1;database=alcadaaluno;port=3306;user id=root;password=";
            MySqlCommand cmd = new MySqlCommand();

            // Tentar abrir - Fluxos alternativos (Especificação de Caso de Uso DOC)
            try
            {
                MySqlConnection cn = new MySqlConnection(strConn);
                if (cn.State != System.Data.ConnectionState.Open)
                {
                    cn.Open();
                }
                cmd.Connection = cn;
            }
            catch (Exception)
            {

                throw;
            }

            return cmd;
        }

        public static void Fechar(MySqlCommand cmd)
        {
            if (cmd.Connection.State == System.Data.ConnectionState.Open)
            {
                cmd.Connection.Close();
            }
        }
    }
}