using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace WindowsFormsApp1
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }



        private void Form2_Load(object sender, EventArgs e)
        {
            biblioDataSet.Clear();
            sqlDataAdapter1.Fill(biblioDataSet);

            this.v_BiblioAdapter.Fill(this.sqlDataAdapter 1.v_Biblio);
        }

        private void label4_Click(object sender, EventArgs e)
        {

        }
        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                sqlConnection1.Open();
                sqlInsertCommand1.Parameters["@Name"].Value = Convert.ToInt32(textBox1.Text);
                sqlInsertCommand1.Parameters["@City"].Value = Convert.ToInt32(textBox1.Text);
                sqlInsertCommand1.Parameters["@Adress"].Value = Convert.ToInt32(textBox1.Text);
                sqlInsertCommand1.ExecuteNonQuery();

                biblioDataSet.Clear();
                sqlDataAdapter1.Fill(biblioDataSet);

                sqlConnection1.Close();
            }
            catch (SqlException ex)
            {
                MessageBox.Show(ex.Message, "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void button3_Click(object sender, EventArgs e)
        {
            DataRow row = GetCurrentRow(dataGridView1);
            textBox1.Text = row["Date_of_fill"].ToString();
            MaskedTextBox1.Text = row["date_of_fill"].ToString();
            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                DataRow row = GetCurrentRow(dataGridView1);
                int idd = (int)row["id_biblio"];
                sqlConnection1.Open();
                sqlDeleteCommand1.Parameters["id_biblio"].Value = idd;
                sqlDeleteCommand1.ExecuteNonQuery ();

                biblioDataSet.Clear(); 
                sqlDataAdapter1.Fill(biblioDataSet);

                sqlConnection1.Close();

            }
            catch (SqlException ex) { 
                MessageBox.Show(ex.Message, "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                sqlConnection1.Close();
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            DataRow row = GetCurrentRow(dataGridView1);
            int idd = (int)row["id_biblio"];
            sqlConnection1.Open();
            sqlUpdateCommand1.Parameters["@id_biblio"].Value = idd;
            sqlUpdateCommand1.Parameters[@Name].Value = idd;
            sqlUpdateCommand1.Parameters[@City].Value = idd;
            sqlUpdateCommand1.Parameters[@Adress].Value = idd;
            sqlUpdateCommand1.ExecuteNonQuery ();

            biblioDataSet.Clear();
            sqlDataAdapter1 .Fill(biblioDataSet);


            sqlConnection1.Close();
        }
    }
}
