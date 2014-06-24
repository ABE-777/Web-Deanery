using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Common;
using WebDeanery.DataLayer;
using WebDeanery.Models;

namespace WebDeanery.AmbionPages
{
    public partial class AmbionAttendance : System.Web.UI.Page
    {
        private static readonly UniversityEntities Db = new UniversityEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Fakultet_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Изменить значения следующего листа
        }



        [WebMethod]
        public static DataModel GetFacultet()
        {
            var facultets = new DataModel
            {
                Facultet = Db.Fakultet.Select(f => new FacultetModel
                {
                    FacultetId = f.FacultetID,
                    FacultetName = f.FacultetAnun,
                    ShortName = f.FacultetKrchat
                }).ToList(),
            };
            return facultets;
        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json, XmlSerializeString = false)]
        public static List<MasnagitutyunModel> GetMasnagitutyun(int Id)
        {
            var lst = (from m in Db.FakultetArarka
                       where m.FackultetID == Id
                       select new MasnagitutyunModel
                       {
                           MasnagitutyunId = (int)m.MasnagitutyunID,
                           Masnagitutyun = m.Masnagitutyun
                       }).Distinct().ToList();

            return lst;

        }

    }
}