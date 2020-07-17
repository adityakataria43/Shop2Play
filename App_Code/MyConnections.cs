using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace connection
{
    public class MyConnections
    {
        static String MySqlConnectionString = "Server=localhost;Database=webone;Uid=root;Pwd=admin;";
        public static MySqlConnection ConnectDB()
        {
            MySqlConnection conn = new MySqlConnection(MySqlConnectionString);
            return conn;
        }
    }
}
