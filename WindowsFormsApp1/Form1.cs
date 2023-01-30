using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Библиотека : Form
    {
        public Библиотека()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
          
        }

        private void contextMenuStrip1_Opening(object sender, CancelEventArgs e)
        {

        }

        private void cписокБиблиотекToolStripMenuItem_Click(object sender, EventArgs e)
        {
            

        }
        private void списокФондовToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void списокПополненийToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var qwe = new Zapros();
            qwe.ShowDialog();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private class Zapros
        {
            public Zapros()
            {
            }

            internal void ShowDialog()
            {
                throw new NotImplementedException();
            }
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
            var qwe = new Form2();
            qwe.ShowDialog();
        }

        private void toolStripMenuItem2_Click(object sender, EventArgs e)
        {
            var qwe = new Form3();
            qwe.ShowDialog();
        }

        private void toolStripMenuItem4_Click(object sender, EventArgs e)
        {
            var qwe = new Form5();
            qwe.ShowDialog();
        }

        private void toolStripMenuItem3_Click(object sender, EventArgs e)
        {
            var qwe = new Form4();
            qwe.ShowDialog();
        }

        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            var qwe = new Form6();
            qwe.ShowDialog();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }

    
}
