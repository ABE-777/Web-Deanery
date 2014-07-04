﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebDeanery.Models
{
    public class MasnagitutyunModel
    {
        public Int32 MasnagitutyunId { get; set; }
        public String Masnagitutyun { get; set; }
        public String MasnagitutyunKrchat { get; set; }
        public List<KursModel> Kurs { get; set; }

        public Int32 FacultetId { get; set; }
       
    }

    public class KursModel
    {
        public Int32 Kurs { get; set; }
    }
}