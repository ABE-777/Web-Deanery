using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using WebDeanery.DataLayer;
using WebDeanery.Models;

namespace WebDeanery.AmbionPages
{
    public partial class AmbionAttendanceCheck : System.Web.UI.Page
    {
        private static readonly UniversityEntities Db = new UniversityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int FakID = 1;
            int SpecID = 1;
            int kurs = 1;
            int KodStupeni=1;
            this.CourceName.Text = GetFacultetName(FakID) + " - "+kurs.ToString();
            for (int i = 0; i < GetArarka(FakID, SpecID, kurs).Count;i++ )
                this.Названия_предметов.Items.Add(GetArarka(FakID, SpecID, kurs)[i].ToString());
            Array mas = GetStudents(FakID, SpecID, KodStupeni).ToArray();


            
            //Response.ContentType = "application/x-msexcel";
            //Response.AddHeader("Content-Disposition", "attachment; filename=ExcelFile.xls"); Response.ContentEncoding = Encoding.UTF8;
            //StringWriter tw = new StringWriter(); 
            //HtmlTextWriter hw = new HtmlTextWriter(tw); 
            //CheckTable.RenderControl(hw);
            //Response.Write(tw.ToString());
            //Response.End();

        }
        [WebMethod]
        public static string GetFacultetName(int Id)
        {
            var lst = (from m in Db.Fakultet
                       where m.FacultetID == Id
                       select m.FacultetAnun).FirstOrDefault();
            return lst.ToString();
        }

        public static List<string> GetArarka(int FakId, int SpecId, int kurs)
        {
            var lst = (from m in Db.FakultetArarka
                       where m.FackultetID == FakId && m.MasnagitutyunID==SpecId && m.Kurs== kurs
                       select m.ArarkaAnun).ToList();
            return lst;
         }

        public static string[] GetStudents(int FakId, int SpecId, int kurs)
        {

            string FacShort = (from m in Db.Fakultet
                               where m.FacultetID == FakId
                               select m.FacultetKrchat).FirstOrDefault().ToString();
            string MasnShort = (from m in Db.Masnagitucyun
                                where m.MasnagitutyunID == SpecId
                                select m.MasnagitutyunKrchat).FirstOrDefault().ToString();
            string format = FacShort + "__" + kurs.ToString() + MasnShort + "___";

            var lst = Db.GetStudentCode(format).Select(t => new StudentModel
               {
                   StAzganun = t.Azganun,
                   StAnun = t.Anun,
                   StHayranun = t.Hayranun
               }).ToList();
            string[] students = new string[lst.Count];
            for (int i = 0 ; i<lst.Count; i++)
            {
                students[i] = lst[i].StAzganun.Trim().ToString() + " " + lst[i].StAnun.Trim().ToString() + " " + lst[i].StHayranun.Trim().ToString();
            }
            
            return students;
        }

    }
}