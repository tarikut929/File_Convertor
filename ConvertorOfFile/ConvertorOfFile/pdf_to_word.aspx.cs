using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertorOfFile
{
    public partial class pdf_to_word : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         //  Result.Text = "";
        }
        string filename1;
        protected void Button_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile.FileName.Length == 0 || FileUpload1.FileBytes.Length == 0)
            {
                filename1 = System.IO.Path.GetFileName(FileUpload1.FileName);
                //  Result.Text = "Please select PDF file at first!";
                return;
            }
            byte[] rtf = null;

            SautinSoft.PdfFocus f = new SautinSoft.PdfFocus();
            //this property is necessary only for registered version
            //f.Serial = "XXXXXXXXXXX";
            f.OpenPdf(FileUpload1.FileBytes);

            if (f.PageCount > 0)
            {
                //Let's whole PDF document to Word (RTF)
                f.WordOptions.Format = SautinSoft.PdfFocus.CWordOptions.eWordDocument.Rtf;

                // You may also set an output format to Docx.
                //f.WordOptions.Format = SautinSoft.PdfFocus.CWordOptions.eWordDocument.Docx;
                rtf = f.ToWord();
            }

            //show Word/rtf
            if (rtf != null)
            {
                filename1 = System.IO.Path.GetFileName(FileUpload1.FileName);
                filename1 = filename1.Substring(0, filename1.Length - 4);
                ShowResult(rtf, filename1, "application/msword");
            }
            else
            {
             //   Result.Text = "Converting failed!";
            }
        }
        private void ShowResult(byte[] data, string fileName, string contentType)
        {
            Response.Buffer = true;
            Response.Clear();
            Response.ContentType = contentType;
            Response.AddHeader("content-disposition", "inline; filename=\"" + fileName + ".rtf\"");
            Response.BinaryWrite(data);
            Response.Flush();
            Response.End();
        }

    }
}