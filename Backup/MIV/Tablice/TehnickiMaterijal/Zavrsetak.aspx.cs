using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.html;
using iTextSharp.text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace MIV.Tablice.TehnickiMaterijal
{
    public partial class PDF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
        }

        protected void ButtonPosalji_Click(object sender, EventArgs e)
        {
            string FilePath = MapPath("~/File/'"+ Session["Korisnik"] +"'Test4.pdf");
            Document doc = new Document(iTextSharp.text.PageSize.A4, 20f, 20f, 20f, 20f);
            PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream(FilePath, FileMode.Create));

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            GridView1.AllowPaging = false;
            GridView1.HeaderRow.Cells[1].Text = "CRNA METALURGIJA";
            GridView1.HeaderRow.Font.Bold = true;
            GridView1.RenderControl(hw);

            StringReader sr = new StringReader(sw.ToString());
            HTMLWorker htmlparser = new HTMLWorker(doc);
            PdfWriter.GetInstance(doc, Response.OutputStream);

            doc.Open();
            //Slika PDF
            iTextSharp.text.Image jpg = iTextSharp.text.Image.GetInstance("C:/Users/Vibor/documents/visual studio 2010/Projects/MIV foi-core/MIV/MIV/Tablice/TehnickiMaterijal/images/miv-logo-1.jpg");
            jpg.ScalePercent(60f);
            doc.Add(jpg);
            //Naslov
            Paragraph parag = new Paragraph("e-NABAVA\n\n");
            parag.Font.Color = iTextSharp.text.BaseColor.GREEN;
            doc.Add(parag);

            //Tablica
            htmlparser.Parse(sr);

            //Ispod tablice 
            Paragraph newpar = new Paragraph("");
            doc.Add(newpar);
     
            PdfPTable tablica = new PdfPTable(3);
            tablica.DefaultCell.Border = Rectangle.NO_BORDER;
            
            string cijena = TextBoxCijena.Text;
            string valuta = DropDownListValuta.SelectedItem.Text;

            tablica.AddCell("Cijena:");
            tablica.AddCell(cijena);
            tablica.AddCell(valuta);

            string isporuka = TextBoxRokIsporuke.Text;

            tablica.AddCell("Rok isporuke:");
            tablica.AddCell(isporuka);
            tablica.AddCell("");
            
            string nacinplac = TextBoxPlacanje.Text;
            string gotovina = DropDownList1.SelectedItem.Text;
            
            tablica.AddCell("Rok i način plaćanja:");
            tablica.AddCell(nacinplac);
            tablica.AddCell(gotovina);

            string napomena = TextBoxNapomena.Text;
            tablica.AddCell("Napomena:");
            tablica.AddCell(napomena);
            tablica.AddCell("");

            doc.Add(tablica);

            doc.Close();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MIV"].ConnectionString);
            conn.Open();
            string deletedata = "Delete from Pomocna3 where 1=1";
            SqlCommand cmd = new SqlCommand(deletedata, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Write(doc);

            Response.ContentType = "Application/pdf";
            Response.WriteFile(FilePath);
            Response.End();
        }
    }
}