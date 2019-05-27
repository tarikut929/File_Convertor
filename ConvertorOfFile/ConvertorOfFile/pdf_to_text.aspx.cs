using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertorOfFile
{
    public partial class pdf_to_text : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Result.Text = "";
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile.FileName.Length == 0 || FileUpload1.FileBytes.Length == 0)
            {
                Result.Text = "Please select PDF file at first!";
                return;
            }

            SautinSoft.PdfFocus f = new SautinSoft.PdfFocus();
            //this property is necessary only for registered version
            //f.Serial = "XXXXXXXXXXX";
            f.OpenPdf(FileUpload1.FileBytes);

            if (f.PageCount > 0)
            {
                //Convert whole PDF to Text (extract text from PDF)
                string text = f.ToText();

                //show text
                TextBox1.Text = text;
            }
            else
            {
                Result.Text = "Extracting failed!";
            }
        }

    }
}