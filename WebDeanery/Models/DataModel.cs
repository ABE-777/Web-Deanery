using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDeanery.Models
{
    public class DataModel
    {
        public List<MasnagitutyunModel> Masnagitutyun { get; set; }

        public List<FacultetModel> Facultet { get; set; }

        public List<StudentModel> Student { get; set; }
    }
}