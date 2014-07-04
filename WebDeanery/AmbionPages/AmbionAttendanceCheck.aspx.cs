using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Linq.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Services;
using WebDeanery.DataLayer;
using WebDeanery.Models;
using System.IO;
using System.Text;

namespace WebDeanery.AmbionPages
{
    public partial class AmbionAttendanceCheck : System.Web.UI.Page
    {
        //исходные данные
        const int KodStupeni = 1; 
        string GroupCod;
        

        const string quote = "\"";
        private static readonly UniversityEntities Db = new UniversityEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            { 
            int FakID = Convert.ToInt32(Request.QueryString["fac"]);
            int SpecID = Convert.ToInt32(Request.QueryString["msg"]);
            int kurs = Convert.ToInt32(Request.QueryString["kurs"]);

                if (FakID != 0 && SpecID != 0 && kurs != 0)
                {
                    Cource.Text = "Специальность: " + GetSpeciality(SpecID);
                    Kurs.Text =kurs.ToString();
                    //Вычисления дат
                    //Вычисление учебного года
                    if (DateTime.Now.Month >= 9 && DateTime.Now.Month <= 12)
                        UchGod.Text = DateTime.Now.Year.ToString() + " - " + (DateTime.Now.Year + 1).ToString();
                    else
                        UchGod.Text =(DateTime.Now.Year - 1).ToString() + " - " + DateTime.Now.Year.ToString();
                    //Вычисление недели
                    DateTime startdate = new DateTime();
                    if (DateTime.Now.Month >= 9 && DateTime.Now.Month <= 12)
                        startdate = new DateTime(DateTime.Now.Year, 9, 1);
                    else
                        startdate = new DateTime(DateTime.Now.Year - 1, 9, 1);
                    this.Week.Text = ((DateTime.Now - startdate).Days/7).ToString();
                    //Вычисление семестра
                    if (DateTime.Now.Month >= 9 && DateTime.Now.Month <= 12 || DateTime.Now.Month == 1)
                    {
                        Semestr.Text = "1";
                    }
                    else
                    {
                        Semestr.Text = "2";
                    }
                    Subjects.Items.Clear();
                    Groups.Items.Clear();
                    for (int i = 0; i < GetArarka(FakID, SpecID, kurs, Convert.ToInt16(Semestr.Text)).Count; i++)
                        Subjects.Items.Add(GetArarka(FakID, SpecID, kurs, Convert.ToInt16(Semestr.Text))[i].ToString());
                    GetGroups(FakID, SpecID, KodStupeni, kurs);
                    Groups.Items.Add("Choose Group");
                    for (int i = 0; i < GetGroups(FakID, SpecID, KodStupeni, kurs).Length; i++)
                        Groups.Items.Add(GetGroups(FakID, SpecID, KodStupeni, kurs)[i].ToString());
                }
            }
        }
        
        public static string GetSpeciality(int Id)
        {
            var lst = (from m in Db.Masnagitucyun
                       where m.MasnagitutyunID == Id
                       select m.Masnagitutyun).FirstOrDefault();
            return lst.ToString();
        }

        public static List<string> GetArarka(int FakId, int SpecId, int kurs, int semestr)
        {
            var lst = (from m in Db.FakultetArarka
                       where m.FackultetID == FakId && m.MasnagitutyunID == SpecId && m.Kurs == kurs && m.Kisamyak_1_2_ == semestr
                       select m.ArarkaAnun).ToList();
            return lst;
         }
        public static int GetArarkaID(int FakId, int SpecId, int kurs, int semestr,string name)
        {
            var lst = (from m in Db.FakultetArarka
                       where m.FackultetID == FakId && m.MasnagitutyunID == SpecId && m.Kurs == kurs && m.Kisamyak_1_2_ == semestr && m.ArarkaAnun == name
                       select m.ArarkaID).ToList();
            return Convert.ToInt16(lst[0]);
        }

        public static int[] GetGroups(int FakId, int SpecId,int KodStupeni, int kurs)
        {
            string FacShort = (from m in Db.Fakultet
                               where m.FacultetID == FakId
                               select m.FacultetKrchat).FirstOrDefault().ToString();
            string MasnShort = (from m in Db.Masnagitucyun
                                where m.MasnagitutyunID == SpecId
                                select m.MasnagitutyunKrchat).FirstOrDefault().ToString();
            string format = FacShort + "__" + KodStupeni.ToString()+ MasnShort + "___";
            var lst = Db.GetCode(format,kurs).ToList();
            char[] mas = new char[lst.Count];
            int[] group = new int[lst.Count];
            for (int i = 0; i < lst.Count; i++)
            {
                mas = lst[i].ToCharArray(8, 1);
                group[i]=Convert.ToInt16(mas[0].ToString());
            }
            int[] q = group.Distinct().ToArray();
            return q;
        }
        public static string[][] GetStudents(int FakId, int SpecId, int KodStupeni,  int kurs, string GroupCod)
        {
            string FacShort = (from m in Db.Fakultet
                               where m.FacultetID == FakId
                               select m.FacultetKrchat).FirstOrDefault().ToString();
            string MasnShort = (from m in Db.Masnagitucyun
                                where m.MasnagitutyunID == SpecId
                                select m.MasnagitutyunKrchat).FirstOrDefault().ToString();
            string format = FacShort + "__" + KodStupeni.ToString()  + MasnShort + GroupCod + "__";

            var lst = Db.GetStudentCode(format,kurs).Select(t => new StudentModel
               {
                   StAzganun = t.Azganun,
                   StAnun = t.Anun,
                   StHayranun = t.Hayranun
               }).ToList();
            string[][] students = new string[lst.Count][];
            for (int i = 0; i < lst.Count; i++)
            {
                students[i] = new string[3];
            }
                for (int i = 0; i < lst.Count; i++)
                {
                    students[i][0] = lst[i].StAzganun.Trim().ToString();
                    students[i][1] = lst[i].StAnun.Trim().ToString();
                    students[i][2] = lst[i].StHayranun.Trim().ToString();
                }
            return students;
        }

        protected void Groups_SelectedIndexChanged(object sender, EventArgs e)
        {
            Groups.Items.Remove("Choose Group");
            int FakID = Convert.ToInt32(Request.QueryString["fac"]);
            int SpecID = Convert.ToInt32(Request.QueryString["msg"]);
            int kurs = Convert.ToInt32(Request.QueryString["kurs"]);

            GroupCod = Groups.SelectedValue;
            int Ararkaid = GetArarkaID(FakID, SpecID, kurs, Convert.ToInt16(Semestr.Text), Subjects.SelectedValue.ToString());


            string[][] students = new string[GetStudents(FakID, SpecID, KodStupeni, kurs, GroupCod).Length][];
            for (int i = 0; i < GetStudents(FakID, SpecID, KodStupeni, kurs, GroupCod).Length; i++)
            {
                students[i] = new string[3];
            }
            students = GetStudents(FakID, SpecID, KodStupeni,kurs, GroupCod);

            int[] tabledata = new int[15];
            tabledata = GetTableData(FakID, SpecID, KodStupeni, kurs, GroupCod);

            for (int k = 0; k < students.Length; k++)
            {
                HtmlTableRow row = new HtmlTableRow();
                HtmlTableCell numcell = new HtmlTableCell();
                numcell.InnerText = (k + 1).ToString();
                numcell.Style.Add("text-align", "center");
                row.Cells.Add(numcell);

                HtmlTableCell surcell = new HtmlTableCell();
                surcell.InnerText = students[k][0];
                surcell.Style.Add("text-align", "center");
                row.Cells.Add(surcell);
                HtmlTableCell namecell = new HtmlTableCell();
                namecell.InnerText = students[k][1];
                namecell.Style.Add("text-align", "center");
                row.Cells.Add(namecell);
                HtmlTableCell fcell = new HtmlTableCell();
                fcell.InnerText = students[k][2];
                fcell.Style.Add("text-align", "center");
                row.Cells.Add(fcell);
                HtmlTableCell allcell = new HtmlTableCell();
                allcell.InnerHtml = "<input class='all' disabled='disabled'  value=" + quote + tabledata[0] + quote + " type=" + quote + "text" + quote + " style=" + quote + "width:92px;border: none; text-align: center;" + quote + ">";
                row.Cells.Add(allcell);
                for (int i = 5; i < 19; i++)
                {
                    HtmlTableCell cell = new HtmlTableCell();
                    if (tabledata[i - 4]!=0)
                        cell.InnerHtml = "<input class='asd' maxlength='1' value="+quote+tabledata[i-4]+quote+"  style=" + quote + "width:30px; border: none; text-align: center;" + quote +  " title='2 или 4 только'" + ">";
                    else
                        cell.InnerHtml = "<input class='asd' maxlength='1'  style=" + quote + "width:30px; border: none; text-align: center;" + quote + " title='2 или 4 только'" + ">";

                    row.Cells.Add(cell);
                }
                this.CheckinTable.Rows.Add(row);
                CheckinTable.Visible = true;
            }
        }

        public  int[] GetTableData(int FakId, int SpecId, int KodStupeni, int kurs, string GroupCod)
        {
            string FacShort = (from m in Db.Fakultet
                               where m.FacultetID == FakId
                               select m.FacultetKrchat).FirstOrDefault().ToString();
            string MasnShort = (from m in Db.Masnagitucyun
                                where m.MasnagitutyunID == SpecId
                                select m.MasnagitutyunKrchat).FirstOrDefault().ToString();
            string format = FacShort + "__" + KodStupeni.ToString() + MasnShort + GroupCod + "__";
            var lst = Db.GetTableData(format, kurs,GetArarkaID(FakId, SpecId, kurs, Convert.ToInt16(Semestr.Text), Subjects.SelectedValue.ToString())).Select(t => new BacakaShabatModel
            {
                Ndanur = Convert.ToInt32(t.Ndanur),
                ErkuSh = Convert.ToInt32(t.ErkuSh),
                ErekSh = Convert.ToInt32(t.ErekSh),
                ChorSh = Convert.ToInt32(t.ChorSh),
                HingSh = Convert.ToInt32(t.HingSh),
                Urbat = Convert.ToInt32(t.Urbat),
                Shabat = Convert.ToInt32(t.Shabat),
                Kiraki = Convert.ToInt32(t.Kiraki)
            }).ToList();
            int[] data = { lst[0].Ndanur, lst[0].ErkuSh / 10, lst[0].ErkuSh % 10, lst[0].ErekSh / 10, lst[0].ErekSh % 10, lst[0].ChorSh / 10, lst[0].ChorSh % 10, lst[0].HingSh / 10, lst[0].HingSh % 10, lst[0].Urbat / 10, lst[0].Urbat % 10, lst[0].Shabat / 10, lst[0].Shabat % 10, lst[0].Kiraki / 10, lst[0].Kiraki % 10 };
            return data;
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            string k = this.CheckinTable.Rows[2].Cells[4].InnerText;
        }

    }
}