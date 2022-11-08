using MySqlConnector;

namespace TesteVocacionalAPI.DAO
{
    public class ConnectionFactory
    {
        public static MySqlConnection Create()
        {
            string connectionString = "Server=localhost;Database=testeVocacional;Uid=root;Pwd=root;";
            return new MySqlConnection(connectionString);
        }
    }
}
