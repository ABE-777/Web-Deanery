//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebDeanery.DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class Fakultet
    {
        public Fakultet()
        {
            this.FakultetArarka = new HashSet<FakultetArarka>();
        }
    
        public int FacultetID { get; set; }
        public string FacultetAnun { get; set; }
        public string FacultetKrchat { get; set; }
    
        public virtual ICollection<FakultetArarka> FakultetArarka { get; set; }
    }
}
