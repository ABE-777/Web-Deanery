using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebDeanery.DataLayer;

namespace WebDeanery.Models
{
    public class FacultetModel
    {
        public Int32 FacultetId { get; set; }

        public String FacultetName { get; set; }

        public String ShortName { get; set; }

        public List<MasnagitutyunModel> Masnagitutyun { get; set; }
        
    }
}