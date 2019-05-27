<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pdf_to_text.aspx.cs" Inherits="ConvertorOfFile.pdf_to_text" %>

<!DOCTYPE html>
<html >
<head>
    <link rel="icon" type="icon/png" href="images/favicon1203.png">
    <link rel="stylesheet" type="text/css" href="div.css">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
	<meta charset="utf-8">
    <mata name="Tariku w/michael">
    <meta id="Atr/9578/09">
    <meta section="software section 3">
	<title>Online File Convertor</title>
	<style type="text/css">

      
		.cont ul{
      margin-left: 0px;
            border-bottom:1px solid #D0B7A7;
            height:90px;
            position: fixed;
            overflow: hidden;
      }
		
.cont ul{
            width: 100%;
       }
.cont li{
     	padding-right:0px; 
      padding-left:0px;
      margin-right: 0px;
      margin-left:0px; 

     	float:left;
     	height: 90px;
     	border-right: 1px solid #D0B7A7;
     	border-bottom: 1px solid #D0B7A7;
        padding-top:5px;
     	text-align: center;
        
     }


.cont{
	width: 100%;
	margin-top: -25px;
	margin-left: 0px;
	color:white;
	float: left;
  
}
.btm{
           position: fixed;
           top: 80%;
           width: 100%;
      }

.btm ul{
      margin-left: -38px;
            border-bottom:1px solid gray;
            height:150px;
            position: fixed;
            overflow: hidden;
            border-top:0px;
            width: 100%;
           
      }

.btm li{
  text-align: center;
  padding: 0px 0px;
  float:left;
	
	height: 230px;
	width: 16.5%;
	margin-left:0px;
  margin-right: 0px;
	border-right: 0px;
  list-style: none;
}
.btm li img{
 padding-top:20px;
}
a{
	color:white;
	text-decoration: none;
  font-size: 14px;
}
 .cont ul:hover{
	background-color: white;
}
.cont ul:hover a{
	color:black;
  }
.cont ul:hover .img-dark{
  display: inline;
  }
.cont ul:hover .img-light{
  display: none;
  }
.cont li:hover{
	text-decoration: underline;
	
   }
.cont ul:hover li{
	
     	border-right: 1px  solid #a6c2cd;
     	border-bottom: 1px solid #a6c2cd;
}
  .btm li:hover a{
     color:black;
  }	
  li:hover{
  	background-color:white;
  }

  .img-dark{
      display:none;
  }

  .btm li:hover  .img-dark{
      display:inline;
  }
  .btm li:hover  .img-light{
      display:none;
  }



.text{
	position: fixed;
	
	top:25%;
	color:white;
	margin-left:50px;
	width: 400px;
	text-align:center;

}
a{

  display: list-item;
  margin-bottom: 0px;
  padding-top: 10px;
  padding-bottom: 23px;
}
.btm a{
  padding-bottom: 50px;
}




body{
      background: url(images/first.jpg) no-repeat 100% 10%;
      width: 100%;
      background-color:cornflowerblue;
      margin: 0
}
.dropdown{
  background-color: white;
  width: 30%;
  margin-top: 5px;
  height: 130px;
  display: none;
}
.dropdown li{
      width: 9.8999%;
      height: 130px;
      border-left: 0px;
      border-right: 0px;
}
.dropdown li img{
   padding-top: 20px;
}


#sth:hover .dropdown{
  border-top: 1px solid #B7CDD6;
  display: inline;
  margin-top: 3px;
  margin-left: -130px;
  width: 1399px;
}


.long{
  width: 11%;
}
.short{
  width: 7%;
}
.shops{
  width: 45%;
}
.shop{
  padding-top: 24px;
}
.cont h6{
  padding-top: 10px;
}
.dropdown li{
 list-style: none;
}
.dropdown a{
  margin-top: 0px;
  padding-top: 0px;
  padding-bottom: 0px;
  

}
#solution:hover .dropdown{
  border-top: 1px solid #B7CDD6;
  display: inline;
  margin-top: -3px;
  margin-left: -130px;
  width: 900px;
}
#solution:hover .dropdown li{
      width: 23%;
      height: 130px;
      border-left: 0px;
      border-right: 0px;
}

#html:hover .dropdown{
  border-top: 1px solid #B7CDD6;
  display: inline;
  margin-top: -3px;
  margin-left: -130px;
  width: 200px;
}
#html:hover .dropdown li{
      width: 100%;
      height: 130px;
      border-left: 0px;
      border-right: 0px;
}
#excel:hover .dropdown{
  border-top: 1px solid #B7CDD6;
  display: inline;
  margin-top: -3px;
  margin-left: -130px;
  width: 200px;
}
#excel:hover .dropdown li{
      width: 100%;
      height: 130px;
      border-left: 0px;
      border-right: 0px;
}

	</style>



</head>
<body>
    <form id="form1" runat="server" >
   <div class="cont">
   	  <ul style="list-style: none;">
   	  	<li class="long" id="solution"><a href=""> <br><br>PDF
  
             <ul class="dropdown" >
                   <li ><a runat="server" href="~/PdfToHtmlPage.aspx"><br>Html To RTF</a></li>
                   <li><a runat="server" href="~/pdf_to_image.aspx"><br>To Image</a></li>
                   <li><a runat="server" href="~/pdf_to_word.aspx" ><br>To Word</a></li>
                  <li ><a runat="server" href="~/pdf_to_text.aspx" ><br>To Text</a></li>
             </ul> 
           </a>
         </li>
    
   	  	 <li class="long" id="html" ><a href="additional pages/ans.html"><br><br>HTML
                 <ul class="dropdown">
                   <li><a runat="server" href="~/PdfToHtmlPage.aspx"><br>To RTF</a></li>
               </ul></a>
       	</li>
   	  	 <li  class="long" id="excel"><a href="index.html"><br><br>EXCEL
             <ul class="dropdown">
               <li><a runat="server" href="~/excel_to_pdf.aspx"><br>To PDF</a></li>
              </ul>
   	  	  </a></li>
   	  	 <li title="File Convertor" class="shops"><br /><h2>FILE CONVERTOR</h2></li>
   	  	 <li  class="short"><a href="" ><br><br>Twitter</a></li>
   	  	 <li  class="short"><a href="" ><br><br>Facebook</a></li>
   	  	 <li class="short"><a href=""><br><br>Telegram</a></li>
   	  	
   	  </ul>
   </div>
   
   <div  class="text">
   	  <h1>PDF TO TEXT</h1>
       <p class="lead">To convert your file to any format, first choose the file then click on convert button. </p>
        <p><a href="http://www.google.com" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    
   </div>
   <div class="text" style="right:300px;">
   	  <h1>PDF TO TEXT</h1>
       <asp:TextBox ID="TextBox1" runat="server" style="box-shadow:initial; padding:30px" TextMode="MultiLine" BackColor="gray" Columns="4"  Height="200" Width="600" ></asp:TextBox>
       <table style="float:left">
           <tr>
               <td > <asp:FileUpload ID="FileUpload1" class="btn btn-primary btn-lg" runat="server" AllowMultiple="true" /></td>
          
               </tr>
           <tr>
               <td style=" float:left"><asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Click here" OnClick="Button1_Click" /> </td>
               <td ><asp:Label ID="Result" runat="server" Text=""></asp:Label></td>
           </tr>
       </table>
      
   </div>


  <div class="btm" style="border-top:1px solid #D0B7A7;">
   	  <ul style="border-top:1px solid #D0B7A7;" >
         <li><a runat="server" href="~/excel_to_pdf.aspx"><br><br>EXCEL TO PDF</a></li>
         <li><a runat="server" href="~/PdfToHtmlPage.aspx"><br><br>HTML TO RTF</a></li>        
         <li><a runat="server" href="~/pdf_to_image.aspx"><br><br>PDF TO IMAGE</a></li>
         <li><a runat="server" href="~/pdf_to_word.aspx"><br><br>PDF TO WORD</a></li>
         <li><a runat="server" href="~/pdf_to_text.aspx"><br><br>PDF TO TEXT</a></li>
         <li><a runat="server" href="~/PdfToHtmlPage.aspx"><br><br>HTML TO RTF</a></li>
   </ul>
   </div>
</form>
</body>
</html>