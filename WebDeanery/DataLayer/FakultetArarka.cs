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
    
    public partial class FakultetArarka
    {
        public int ID { get; set; }
        public Nullable<int> FackultetID { get; set; }
        public string Fakultet { get; set; }
        public Nullable<int> MasnagitutyunID { get; set; }
        public string Masnagitutyun { get; set; }
        public Nullable<int> Kurs { get; set; }
        public Nullable<int> Kisamyak_1_2_ { get; set; }
        public Nullable<int> Kisamyak { get; set; }
        public Nullable<int> ShabatneriQanak { get; set; }
        public Nullable<int> H_H { get; set; }
        public Nullable<int> Ararka_Praktika { get; set; }
        public Nullable<int> ArarkaID { get; set; }
        public string ArarkaAnun { get; set; }
        public Nullable<int> AmbionID { get; set; }
        public string Ambion { get; set; }
        public Nullable<double> ShabJamQanak { get; set; }
        public Nullable<double> DasJam { get; set; }
        public Nullable<double> G_L_Jam { get; set; }
    
        public virtual Ambion Ambion1 { get; set; }
        public virtual Ararka Ararka { get; set; }
        public virtual Fakultet Fakultet1 { get; set; }
        public virtual Masnagitucyun Masnagitucyun { get; set; }
    }
}
