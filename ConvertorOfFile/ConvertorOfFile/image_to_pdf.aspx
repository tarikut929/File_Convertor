<%@ Page Language="C#" AutoEventWireup="true" CodeFile="image_to_pdf.aspx.cs" Inherits="ConvertorOfFile.image_to_pdf" %>

<!DOCTYPE html>
<html >
<head>
    <link rel="icon" type="icon/png" href="images/favicon1203.png">
    <link rel="stylesheet" type="text/css" href="div.css">
	<meta charset="utf-8">
    <mata name="Tariku w/michael">
    <meta id="Atr/9578/09">
    <meta section="software section 3">
	<title>Skin and makeup solution</title>
	<style type="text/css">
     






      
		.cont ul{
      margin-left: -35px;
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
	border-top:1px solid #D0B7A7;
	height: 230px;
	width: 10%;
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
  width: 100%;
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
#solution:hover .dropdown{
  border-top: 1px solid #B7CDD6;
  display: inline;
  margin-top: 3px;
  margin-left: -130px;
  width: 1399px;
}
#html:hover .dropdown{
  border-top: 1px solid #B7CDD6;
  display: inline;
  margin-top: 3px;
  margin-left: -130px;
  width: 1399px;
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

	</style>



</head>
<body>
    <form id="form1" runat="server" >
   <div class="cont">
   	  <ul style="list-style: none;">
   	  	<li class="long" id="solution"><a href=""> <br><br>PDF
  
      <ul class="dropdown">
         <li><a runat="server" href="~/PdfToHtmlPage.aspx"><br>To Html</a></li>
         <li><a runat="server" href="~/pdf_to_image.aspx"><br>To Image</a></li>
         <li><a runat="server" href="~/pdf_to_word.aspx" ><br>To Word</a></li>
         <li><a runat="server" href="~/pdf_to_text.aspx" ><br>To Text</a></li>
         <li><a runat="server" href="~/pdf_to_image.aspx"><br>ACNE</a></li>
         <li><a runat="server" href="~/pdf_to_image.aspx"><br>OILNESS</a></li>
         <li><a runat="server" href="~/pdf_to_image.aspx"><br>CROWSFEET</a></li>
         <li><a runat="server" href="~/pdf_to_image.aspx"><br>PORES</a></li>
         <li><a runat="server" href="~/pdf_to_image.aspx"><br>FIRMNESS</a></li>
         <li id="spot"><a runat="server" href="~/pdf_to_image.aspx"><br><br>SPOTS</a></li>
       </ul>
       
       </a>
    </li>
    
   	  	 <li class="long" id="html" ><a href="additional pages/ans.html"><br><br>HTML
            <ul class="dropdown">
               <li><a runat="server" href="~/PdfToHtmlPage.aspx"><br>To Html</a></li>
               <li><a runat="server" href="~/pdf_to_image.aspx"><br>To Image</a></li>
               <li><a runat="server" href="~/pdf_to_word.aspx" ><br>To Word</a></li>
               <li><a runat="server" href="~/pdf_to_text.aspx" ><br>To Text</a></li>
               <li><a runat="server" href="~/pdf_to_image.aspx"><br>ACNE</a></li>
               <li><a runat="server" href="~/pdf_to_image.aspx"><br>OILNESS</a></li>
               <li><a runat="server" href="~/pdf_to_image.aspx"><br>CROWSFEET</a></li>
               <li><a runat="server" href="~/pdf_to_image.aspx"><br>PORES</a></li>
               <li><a runat="server" href="~/pdf_to_image.aspx"><br>FIRMNESS</a></li>
               <li id="spot"><a runat="server" href="~/pdf_to_image.aspx"><br>SPOTS</a></li>
            </ul>
           </a></li>
   	  	 <li  class="long" id="smth"><a href="index.html"><br><br>TABLE HOME </a></li>
   	  	 <li title="File Convertor" class="shops"><br /><h2>FILE CONVERTOR</h2></li>
   	  	 <li  class="short"><a href="" ><br><br>Google</a></li>
   	  	 <li  class="short"><a href="" ><br><br>Search</a></li>
   	  	 <li class="short"><a href=""><br><br>Bag(0)</a></li>
   	  	
   	  </ul>
   </div>
   
   <div  class="jumbotron text">
   	  <h1>PDF TO WORD</h1>
       <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    
   </div>
   <div class="jumbotron text" style="right:300px;">
   	  <h1>PDF TO WORD</h1>
       <table style="float:left">
           <tr>
               <td style="border:dashed 3px red;"> <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" /></td>
               <td style="border:dashed 3px red; float:left"><asp:TextBox ID="UserName" runat="server" ToolTip="Enter User Name"></asp:TextBox></td>
           </tr>
           <tr>
               <td style="border:dashed 3px red;"> <asp:FileUpload ID="FileUpload2" runat="server" AllowMultiple="true" /></td>
               <td style="border:dashed 3px red; float:left"><asp:TextBox ID="TextBox1" runat="server" ToolTip=""></asp:TextBox></td>
           </tr>
           <tr>
               <td style="border:dashed 3px red;"> <asp:FileUpload ID="FileUpload3" runat="server" AllowMultiple="true" /></td>
               <td style="border:dashed 3px red; float:left"><asp:TextBox ID="TextBox2" runat="server" ToolTip="Enter User Name"></asp:TextBox></td>
           </tr>
           <tr>
               <td style="border:dashed 3px red;"> <asp:FileUpload ID="FileUpload4" runat="server" AllowMultiple="true" /></td>
               <td style="border:dashed 3px red; float:left"><asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter User Name"></asp:TextBox></td>
           </tr>
           <tr>
               <td style="border:dashed 3px red; float:left"><asp:Button ID="Button1" runat="server" Text="Click here" OnClick="Button_Click" /> </td>
               <td style="border:dashed 3px red;"><asp:Label ID="Result" runat="server" Text=""></asp:Label></td>
           </tr>
       </table>
       
      

    
   </div>


   <div class="btm">
   	  <ul>
         <li><a runat="server" href="~/excel_to_pdf.aspx"><br><br>EXCEL TO PDF</a></li>
         <li><a runat="server" href="~/PdfToHtmlPage"><br><br>HTML TO RTF</a></li>
   	  	 <li><a href="additional pages/dryness.html"><br><br>DRYNESS</a></li>
   	  	 <li><a href="additional pages/skintune.html"><br><br>SKINTONE</a></li>
   	  	 <li><a href="additional pages/acne.html"><br><br>ACNE</a></li>
   	  	 <li><a href="additional pages/oilness.html"><br><br>OILNESS</a></li>
   	  	 <li><a href="additional pages/crowsfeet.html"><br><br>CROWSFEET</a></li>
   	  	 <li><a href="additional pages/pores.html"><br><br>PORES</a></li>
   	  	 <li><a href="additional pages/firmness.html"><br><br>FIRMNESS</a></li>
   	  	 <li><a href="additional pages/spot.html"><br><br>SPOTS</a></li>
   	  	 

   	  	
   	  </ul>
   </div>
</form>
</body>
</html>