using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;

namespace FormSIMTHE
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            LoadData(); 
        }
        private void LoadData()
        {
            string connectionString = "Server=PHONG-DO;Database=QLST;Trusted_Connection=True;";
            string query = "SELECT * FROM Sim ORDER BY NgayKichHoat ASC";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(query, connection);
                DataTable dataTable = new DataTable();
                dataAdapter.Fill(dataTable);

                dataGridView1.DataSource = dataTable;
            }
        }
    }
}
