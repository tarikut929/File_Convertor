using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertorOfFile
{
    public partial class image_to_pdf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Result.Text = "";
            Bitmap bitmap = new Bitmap(1, 1);
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SautinSoft.PdfVision v = new SautinSoft.PdfVision();

            List<byte[]> imgInventory = new List<byte[]>();

            if (FileUpload1.FileBytes.Length > 0)
                imgInventory.Add(FileUpload1.FileBytes);

            if (FileUpload2.FileBytes.Length > 0)
                imgInventory.Add(FileUpload2.FileBytes);

            if (FileUpload3.FileBytes.Length > 0)
                imgInventory.Add(FileUpload3.FileBytes);

            if (FileUpload4.FileBytes.Length > 0)
                imgInventory.Add(FileUpload4.FileBytes);

            //convert arraylist with image streams to pdf stream
            byte[] pdfBytes = v.ConvertImageStreamArrayToPDFStream(imgInventory);


            //show PDF
            if (pdfBytes != null)
            {
                Response.Buffer = true;
                Response.Clear();
                Response.ContentType = "application/PDF";
                string name = "tariku";
                Response.AddHeader("content-disposition", "inline; filename=\"" + name + ".pdf\"");
                //Response.AddHeader("Content-Disposition:", "inline; filename=Result.pdf");
                Response.BinaryWrite(pdfBytes);
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
