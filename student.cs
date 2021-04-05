using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace AppOOP
{
    class Student
    {
        // 1. Định nghĩa trường Name:
        private string Name;

        // 2. Định nghĩa thuộc tính StudentName từ trường Name
        public string StudentName
        {
            get
            {
                return Name;
            }
            set
            {
                Name = value;
            }
        }

        // 3. Định nghĩa phương thức khởi tạo Student(string stName)
        public Student(string stName)
        {
            Name = stName;
        }

        public Student()
        {
        }



        // 4. Định nghĩa phương thức Talk() giới thiệu
        public void Talk()
        {
            MessageBox.Show(Name);
        }

        // tên của sinh viên thông qua MessageBox
    }
}
