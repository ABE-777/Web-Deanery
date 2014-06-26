using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Script.Services;
using System.Web.Services;
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
        public static List<MasnagitutyunModel> GetMasnagitutyun(int fakultetId)
        {
            var lst = (from m in Db.FakultetArarka
                       where m.FackultetID == fakultetId
                       select new MasnagitutyunModel
                       {
                           MasnagitutyunId = (int)m.MasnagitutyunID,
                           Masnagitutyun = m.Masnagitutyun
                       }).Distinct().ToList();

            return lst;

        }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json, XmlSerializeString = false)]
        public static List<MasnagitutyunModel> GetKurs(int ambionId, int masnagitutyunId)
        {
            var kurses = (from m in Db.FakultetArarka
                          where m.AmbionID == ambionId && m.MasnagitutyunID == masnagitutyunId
                          select new MasnagitutyunModel
                          {
                              Kurs = (int)m.Kurs
                          }).Distinct().ToList();

            return kurses;

        }
    }
}