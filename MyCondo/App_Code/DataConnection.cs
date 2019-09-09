using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MyCondo
{
    internal class DataConnection
    {
        // Define data objects
        private static String connectionString = ConfigurationManager.ConnectionStrings["MyCondo"].ConnectionString;
        public SqlConnection conn = new SqlConnection(connectionString);
        private SqlDataReader reader;
        public DataConnection()
        {
        }
        public void CloseConection()
        {
            reader.Close();
            conn.Close();
        }
        public DataTable ExecuteScript(String Script)
        {
            SqlDataAdapter adapter = new SqlDataAdapter(Script, conn);
            DataTable myTable = new DataTable();
            adapter.Fill(myTable);
            return myTable;
        }
        public SqlDataReader ExecuteCommand(SqlCommand command)
        {
            command.Connection = conn;
            try
            {
                conn.Open();
                reader = command.ExecuteReader();
                return reader;
            }
            catch
            {
                return null;
            }
        }

        public void ExecuteNonQuery(SqlCommand command)
        {
            command.Connection = conn;
            try
            {
                conn.Open();
                command.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}