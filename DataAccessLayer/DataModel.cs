using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class DataModel
    {
        SqlConnection _con;
        SqlCommand _cmd;
        public DataModel() { 
            _con = new SqlConnection(ConnectionStrings.ConStr);
            _cmd = _con.CreateCommand();
        }

        #region Kategori Metotları

        public List<Category> GetCategories()
        {
            List<Category> categories = new List<Category>();
            try
            {
                _cmd.CommandText = "SELECT CategoryID,CategoryName,Description FROM Categories";
                _cmd.Parameters.Clear();
                _con.Open();
                SqlDataReader reader = _cmd.ExecuteReader();
                while (reader.Read())
                {
                    Category c = new Category();
                    c.ID = reader.GetInt32(0);
                    c.Name = reader.GetString(1);
                    //if (!reader.IsDBNull(2)){c.Description = reader.GetString(2);}
                    c.Description = !reader.IsDBNull(2) ? reader.GetString(2) : "";
                    categories.Add(c);
                }
                return categories;
            }
            catch { return null; }
            finally { _con.Close(); }
        }

        #endregion
    }
}
