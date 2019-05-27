using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertorOfFile
{
    public partial class pdf_to_image : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           Result.Text = "";
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile.FileName.Length == 0 || FileUpload1.FileBytes.Length == 0)
            {
                Result.Text = "Please select PDF file at first!";
                return;
            }
            Result.Text = "Converting ...";

            SautinSoft.PdfFocus f = new SautinSoft.PdfFocus();
            //this property is necessary only for registered version
            //f.Serial = "XXXXXXXXXXX";

            f.OpenPdf(FileUpload1.FileBytes);

            if (f.PageCount > 0)
            {
                //set image properties
                f.ImageOptions.ImageFormat = System.Drawing.Imaging.ImageFormat.Jpeg;
                f.ImageOptions.Dpi = 200;

                //Let's convert 1st page from PDF document
                byte[] image = f.ToImage(1);

                //show image
                Response.Buffer = true;
                Response.Clear();
                Response.ContentType = "image/jpeg";
                Response.AddHeader("Content-Disposition:", "attachment; filename=Page1.jpg");
                Response.BinaryWrite(image);
                Response.Flush();
                Response.End();
            }
            else
            {
                Result.Text = "Converting failed!";
            }
        }

    }
}