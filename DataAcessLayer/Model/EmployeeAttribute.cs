using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace EmployeeWebApp.Model
{
    public class EmployeeAttribute
    {
        [Key]
        public int ID { get; set; }
        public Guid EMPATTR_EmployeeID { get; set; }
        public Guid EMPATTR_AttributeID { get; set; }
    }
}
