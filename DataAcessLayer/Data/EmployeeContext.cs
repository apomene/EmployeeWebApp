using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using EmployeeWebApp.Model;


namespace EmployeeWebApp.Data
{
    public class EmployeeContext: DbContext
    {
        public EmployeeContext(DbContextOptions<EmployeeContext> options) : base(options)
        {
        }

        public DbSet<Employee> Employees { get; set; }
        public DbSet<Model.Attribute> Attributes { get; set; }
        public DbSet<EmployeeAttribute> EmployeeAttributes { get; set; }
        


    }
}
