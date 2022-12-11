using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApp
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        
        private void studentsBindingNavigatorSaveItem_Click(object sender, EventArgs e)
        {
            this.Validate();
            this.studentsBindingSource.EndEdit();
            this.tableAdapterManager.UpdateAll(this.dataSet1);

        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'dataSet1.ClassroomTeachers' table. You can move, or remove it, as needed.
            this.classroomTeachersTableAdapter.Fill(this.dataSet1.ClassroomTeachers);
            // TODO: This line of code loads data into the 'dataSet1.StudentsForConcreteClasses' table. You can move, or remove it, as needed.
            this.studentsForConcreteClassesTableAdapter.Fill(this.dataSet1.StudentsForConcreteClasses);
            // TODO: This line of code loads data into the 'dataSet1.TeatcherAndLessons' table. You can move, or remove it, as needed.
            this.teatcherAndLessonsTableAdapter.Fill(this.dataSet1.TeatcherAndLessons);
            // TODO: This line of code loads data into the 'dataSet1.Classes' table. You can move, or remove it, as needed.
            this.classesTableAdapter.Fill(this.dataSet1.Classes);
            // TODO: This line of code loads data into the 'dataSet1.Lessons' table. You can move, or remove it, as needed.
            this.lessonsTableAdapter.Fill(this.dataSet1.Lessons);
            // TODO: This line of code loads data into the 'dataSet1.Teachers' table. You can move, or remove it, as needed.
            this.teachersTableAdapter.Fill(this.dataSet1.Teachers);
            // TODO: This line of code loads data into the 'dataSet1.Students' table. You can move, or remove it, as needed.
            this.studentsTableAdapter.Fill(this.dataSet1.Students);

        }

        private void button3_Click(object sender, EventArgs e)
        {
            studentsBindingSource.AddNew();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            studentsBindingSource.EndEdit();
            studentsTableAdapter.Update(dataSet1);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            teachersBindingSource.AddNew();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            teachersBindingSource.EndEdit();
            teachersTableAdapter.Update(dataSet1);
        }
        

        private void fillByStudentIDToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.studentsTableAdapter.FillByStudentID(this.dataSet1.Students, ((int)(System.Convert.ChangeType(studentIDToolStripTextBox.Text, typeof(int)))));
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }
        private void button5_Click(object sender, EventArgs e)
        {
            teatcherAndLessonsBindingSource.AddNew();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            teatcherAndLessonsBindingSource.EndEdit();
            teatcherAndLessonsTableAdapter.Update(dataSet1);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            studentsForConcreteClassesBindingSource.AddNew();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            studentsForConcreteClassesBindingSource.EndEdit();
            studentsForConcreteClassesTableAdapter.Update(dataSet1);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            classroomTeachersBindingSource.AddNew();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            classroomTeachersBindingSource.EndEdit();
            classroomTeachersTableAdapter.Update(dataSet1);
        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void fillByStudentIDToolStrip_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void tabPage3_Click(object sender, EventArgs e)
        {

        }

        private void tabPage4_Click(object sender, EventArgs e)
        {

        }

        private void fillByClassNumberToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.studentsForConcreteClassesTableAdapter.FillByClassNumber(this.dataSet1.StudentsForConcreteClasses, ((int)(System.Convert.ChangeType(classNumberToolStripTextBox.Text, typeof(int)))));
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void fillByStudentID_inClassesToolStripButton_Click(object sender, EventArgs e)
        {
            try
            {
                this.studentsForConcreteClassesTableAdapter.FillByStudentID_inClasses(this.dataSet1.StudentsForConcreteClasses, ((int)(System.Convert.ChangeType(studentIDToolStripTextBox1.Text, typeof(int)))));
            }
            catch (System.Exception ex)
            {
                System.Windows.Forms.MessageBox.Show(ex.Message);
            }

        }

        private void button11_Click(object sender, EventArgs e)
        {
            int delet = studentsDataGridView.SelectedCells[0].RowIndex;
            studentsDataGridView.Rows.RemoveAt(delet);
            studentsTableAdapter.Update(dataSet1);
        }

        private void button12_Click(object sender, EventArgs e)
        {
            int delet = teachersDataGridView.SelectedCells[0].RowIndex;
            teachersDataGridView.Rows.RemoveAt(delet);
            teachersTableAdapter.Update(dataSet1);
        }

        private void fillByStudentID_inClassesToolStrip_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void lNameLabel_Click(object sender, EventArgs e)
        {

        }
    }
}
