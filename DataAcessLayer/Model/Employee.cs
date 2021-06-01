using System;
using System.ComponentModel.DataAnnotations;

namespace EmployeeWebApp.Model
{
    public class Employee
    {
        [Key]
        public Guid Emp_id { get; set; }
        public string Emp_Name { get; set; }
        public DateTime Emp_DateOfHire { get; set; }
        public Guid? Emp_Supervisor { get; set;}
    }
}
