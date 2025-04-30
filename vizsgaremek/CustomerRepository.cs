using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace vizsgaremek
{
    using System.Collections.Generic;
    using System.Data.SQLite;
    using Dapper;

    public static class CustomerRepository
    {
        public static List<Customer> GetAll()
        {
            using var connection = DatabaseHelper.GetConnection();
            connection.Open();
            return connection.Query<Customer>("SELECT * FROM Customers").AsList();
        }

        public static void Add(Customer customer)
        {
            using var connection = DatabaseHelper.GetConnection();
            connection.Open();
            string sql = "INSERT INTO Customers (Name, Email) VALUES (@Name, @Email)";
            connection.Execute(sql, customer);
        }

        public static void Update(Customer customer)
        {
            using var connection = DatabaseHelper.GetConnection();
            connection.Open();
            string sql = "UPDATE Customers SET Name = @Name, Email = @Email WHERE Id = @Id";
            connection.Execute(sql, customer);
        }

        public static void Delete(int id)
        {
            using var connection = DatabaseHelper.GetConnection();
            connection.Open();
            string sql = "DELETE FROM Customers WHERE Id = @Id";
            connection.Execute(sql, new { Id = id });
        }
    }

}
