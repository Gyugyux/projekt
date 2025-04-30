using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace vizsgaremek
{
    using System.Data.SQLite;
    using System.IO;

    public static class DatabaseHelper
    {
        private static string _connectionString = "Data Source=adatbazis.db";

        public static void InitializeDatabase()
        {
            if (!File.Exists("adatbazis.db"))
            {
                SQLiteConnection.CreateFile("adatbazis.db");
                using var connection = new SQLiteConnection(_connectionString);
                connection.Open();
                string createTable = @"
                CREATE TABLE Customers (
                    Id INTEGER PRIMARY KEY AUTOINCREMENT,
                    Name TEXT NOT NULL,
                    Email TEXT NOT NULL
                );";
                using var cmd = new SQLiteCommand(createTable, connection);
                cmd.ExecuteNonQuery();
            }
        }

        public static SQLiteConnection GetConnection()
        {
            return new SQLiteConnection(_connectionString);
        }
    }

}
