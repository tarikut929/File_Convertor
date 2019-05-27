using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConvertorOfFile
{
    public partial class excel_to_pdf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Result.Text = "";
        }
        protected void Button_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile.FileName.Length == 0 || FileUpload1.FileBytes.Length == 0)
            {
                Result.Text = "Please select an Excel document for conversion!";
                return;
            }

            SautinSoft.ExcelToPdf x = new SautinSoft.ExcelToPdf();
            x.PageStyle.PageSize.Letter();


            byte[] pdfBytes = null;

            try
            {
                pdfBytes = x.ConvertBytes(FileUpload1.FileBytes);
            }
            catch { }

            //show PDF
            if (pdfBytes != null)
            {
                Response.Buffer = true;
                Response.Clear();
                Response.ContentType = "application/PDF";
                Response.AppendHeader("content-disposition", "attachment; filename=Result.pdf");
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