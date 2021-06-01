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

        public DbSet<Employee> Employee{ get; set; }
        public DbSet<Attributes> Attribute { get; set; }
        public DbSet<EmployeeAttribute> EmployeeAttribute { get; set; }
        


    }
}
