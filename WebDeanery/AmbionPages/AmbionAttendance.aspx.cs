using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net.Sockets;
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
        public static DataModel GetMasnagitutyun(int ambionId, int fakultetId)
        {
            var query = (from m in Db.FakultetArarka
                       where m.FackultetID == fakultetId
                       select new {m.MasnagitutyunID,m.Masnagitutyun}).Distinct().ToList();

            var lst = new List<MasnagitutyunModel>();
           
            foreach (var q in query)
            {
                lst.Add(new MasnagitutyunModel
                {
                    FacultetId = fakultetId,
                    Masnagitutyun = q.Masnagitutyun,
                    MasnagitutyunId = (int)q.MasnagitutyunID,
                    Kurs = (from m in Db.FakultetArarka
                          where m.AmbionID == ambionId && m.MasnagitutyunID == q.MasnagitutyunID
                          select new KursModel
                          {
                              Kurs = (int)m.Kurs
                          }).Distinct().ToList()
                });
            }

            return new DataModel
            {
               Masnagitutyun = lst
            };

        }

        public static List<Int32> GetKurs(int ambionId, int masnagitutyunId)
        {
            var kurses = (from m in Db.FakultetArarka
                          where m.AmbionID == ambionId && m.MasnagitutyunID == masnagitutyunId
                          select m.Kurs).Distinct().ToList();

            return new List<Int32>{Convert.ToInt32(kurses)};

        }

    }
}