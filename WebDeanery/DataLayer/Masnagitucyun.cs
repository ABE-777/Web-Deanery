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
    
    public partial class Masnagitucyun
    {
        public Masnagitucyun()
        {
            this.FakultetArarka = new HashSet<FakultetArarka>();
        }
    
        public int MasnagitutyunID { get; set; }
        public string Masnagitutyun { get; set; }
        public string MasnagitutyunKrchat { get; set; }
    
        public virtual ICollection<FakultetArarka> FakultetArarka { get; set; }
    }
}
