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
    public partial class PdfToHtmlPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_Click(object sender, EventArgs e)
        {
          
            SautinSoft.HtmlToRtf h = new SautinSoft.HtmlToRtf();

            // After purchasing the license, please insert your serial number here to activate the component.
            // h.Serial = "XXXXXXXXX";

            //here we specify page numbers
            h.PageStyle.PageNumbers.Appearance = SautinSoft.HtmlToRtf.ePageNumberingAppearence.PageNumFirst;

            //specify HTML format as string
            h.PageStyle.PageHeader.Html("<table border=\"1\"><tr><td>We added this header using the property \"Header.Html\"</td></tr></table>");

            //add footer from HTML file
            h.PageStyle.PageFooter.FromHtmlFile(Path.Combine(Server.MapPath(""), @"footer.htm"));

            //get content of the ASPX page in HTML format
            string htmlString = GetHtmlFromAspx("C:/Users/tariku/Desktop/Tariku/mmmmmmmmmmmmmm.html");

            h.BaseURL = Server.MapPath("");

            string rtfString = String.Empty;

            if (h.OpenHtml(htmlString))
                rtfString = h.ToRtf();

            // Show result in the default RTF viewer app.
            if (!String.IsNullOrEmpty(rtfString))
            {
                //  string  filename1 = System.IO.Path.GetFileName(FileUpload1.FileName);
                //<a href="path/to/file" download>Click here to download</a>

                string name = System.IO.Path.GetFileName(FileUpload1.FileName);
                
                name = name.Substring(0, name.Length - 4);
                Response.Clear();
                Response.ContentType = "application/rtf";
                Response.AddHeader("content-disposition", "inline; filename=\"" + name + ".rtf\"");

                File.SetAttributes("C:/Users/tariku/Desktop/Tariku", FileAttributes.Normal);
                byte[] data = System.Text.Encoding.UTF8.GetBytes(rtfString);
                Response.BinaryWrite(data);

                Response.Flush();
                Response.End();

            }
            else
            {

            }

        }
        public static string GetHtmlFromAspx(string url)
        {
            string contents = "";

            if (url.Length > 6)
            {
                //open 'http://' file
                if ((url[0] == 'h' || url[0] == 'H') && (url[1] == 't' || url[1] == 'T') &&
                    (url[2] == 't' || url[2] == 'T') && (url[3] == 'p' || url[3] == 'P') &&
                    url[4] == ':' && url[5] == '/' && url[6] == '/')
                {
                    Stream StreamHttp = null;
                    WebResponse resp = null;
                    HttpWebRequest webrequest = null;

                    try
                    {
                        webrequest = (HttpWebRequest)WebRequest.Create(url);
                        resp = webrequest.GetResponse();
                        StreamHttp = resp.GetResponseStream();
                        StreamReader sr = new StreamReader(StreamHttp);
                        contents = sr.ReadToEnd();
                        return contents;
                    }
                    catch
                    {
                    }
                }

                //local file
                else
                {
                    try
                    {
                        StreamReader sr = new StreamReader(url);
                        contents = sr.ReadToEnd();
                        sr.Close();
                    }
                    catch
                    {
                    }
                }
            }
            return contents;
        }
    }
}