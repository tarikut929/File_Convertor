using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertorOfFile
{
    public partial class user_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SautinSoft.PdfFocus f = new SautinSoft.PdfFocus();

            string strHtml = string.Empty;
            string htmlFileName = Server.MapPath("~") + "\\files\\" + "\\convertHtmlTopdf.html";
            string pdfFileName = Request.PhysicalApplicationPath + "\\files\\"+"\\converted.pdf";
            FileStream fsHTMLDocument = new FileStream(htmlFileName, FileMode.Open, FileAccess.Read);
            StreamReader srHTMLDocument = new StreamReader(fsHTMLDocument);
            srHTMLDocument.Close();
           
           // f.OpenPdf(fsHTMLDocument.FileBy);
            string html = String.Empty;


            if (f.PageCount > 0)
            {
                //Let's whole PDF document to HTML
                f.HtmlOptions.IncludeImageInHtml = true;
                html = f.ToHtml();
            }

            //show HTML
            if (html != "")
            {

                Response.Buffer = true;
                Response.Clear();
                Response.ContentType = "application/msword";
                Response.AddHeader("Content-Disposition:", "attachment; filename=Result.doc");

                Response.Flush();
                Response.End();
            }
        }
    }
}