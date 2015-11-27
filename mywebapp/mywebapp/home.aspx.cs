using System;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace mywebapp
{
    public partial class home : System.Web.UI.Page
    {
        //TODO: Adicione sua conexão aqui
        MySqlConnection connection = new MySqlConnection("SUA STRING DE CONEXÃO AQUI");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                atualizar();
        }

        protected void OnClick(object sender, EventArgs e)
        {
            try
            {
                string cmd = "";
                MySqlCommand command = new MySqlCommand();
                command.Connection = connection;

                cmd += "SET @@auto_increment_increment=1;";
                cmd += "INSERT INTO tblClientes(nome, sobrenome,idade,sexo,estado) VALUES (@nome, @sobrenome, @idade, @sexo, @estado);";

                command.CommandText = cmd;
                command.Parameters.AddWithValue("@nome", txtNome.Value);
                command.Parameters.AddWithValue("@sobrenome", txtSobrenome.Value);
                command.Parameters.AddWithValue("@idade", txtIdade.Value);
                command.Parameters.AddWithValue("@sexo", sltSexo.Value);
                command.Parameters.AddWithValue("@estado", txtEstado.Value);

                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();

                atualizar();
                limpar();
                msg.InnerText = "Sucesso!";
            }
            catch (Exception ex)
            {
                msg.InnerText = "Erro:" + ex.Message;
            }
        }

        private void atualizar()
        {
            try
            {
                tblDados.Rows.Clear();
                MySqlCommand command = new MySqlCommand("SELECT * FROM tblClientes;", connection);
                connection.Open();
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    var row = new TableRow();
                    TableCell[] cells = new TableCell[6];
                    for (int i = 0; i < 6; i++)
                    {
                        cells[i] = new TableCell();
                        cells[i].Text = reader[i].ToString();
                    }
                    row.Cells.AddRange(cells);
                    tblDados.Rows.Add(row);
                }
                reader.Close();
                connection.Close();
            }
            catch (Exception ex)
            {
                msg.InnerText = "Erro:" + ex.Message;
            }
        }

        private void limpar()
        {
            txtNome.Value = "";
            txtSobrenome.Value = "";
            txtIdade.Value = "";
            sltSexo.Value = "";
            txtEstado.Value = "";
        }
    }
}