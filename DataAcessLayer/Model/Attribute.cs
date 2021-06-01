using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace EmployeeWebApp.Model
{
    public class Attributes
    {
        [Key]
        public Guid Attr_id { get; set; }
        public string Attr_Name { get; set; }
        public string Attr_Value { get; set; }

    }
}
