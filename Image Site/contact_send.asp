<!--#include file="common.asp"-->
<%
formid=request.form("formid")
companyname=request.form("companyname")
fullname=request.form("fullname")
emailaddress=request.form("emailaddress")
website=request.form("website")
personincharge=request.form("personincharge")
tel=request.form("tel")
fax=request.form("fax")
enquiryfor=request.form("enquiryfor")
comment=request.form("comment")

mailbody=mailbody & "<html>"& vbCrlf 
mailbody=mailbody & "<HEAD>"& vbCrlf 
mailbody=mailbody & "<TITLE>Emage Storr Contact Form</TITLE>"& vbCrlf 
mailbody=mailbody & "<META HTTP-EQUIV=""Content-Type"" CONTENT=""text/html; charset=iso-8859-1"">"& vbCrlf 
'mailbody=mailbody & "<style>"& vbCrlf 
'mailbody=mailbody & "table{ font: normal 12px Verdana, Arial, Helvetica, sans-serif; color:#000000}" &  vbCrlf 
'mailbody=mailbody & "td{ font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000; font-size: 12px; font-weight: normal; }" &  vbCrlf 
'mailbody=mailbody & "</style>"& vbCrlf 
mailbody=mailbody & "</HEAD>"& vbCrlf 
mailbody=mailbody & "<body BGCOLOR=#FFFFFF alink=#000000 vlink=#000000 link=#000000>" &  vbCrlf 
mailbody=mailbody & "<font size=""2"" face=""Arial, Helvetica, sans-serif"">"
mailbody=mailbody & "Your enquiry has been submitted successfully.<br><br>"
mailbody=mailbody & "Followings are the details submitted:<br>"
mailbody=mailbody & "Enquiry For : " & enquiryfor &"<br>"
mailbody=mailbody & "Name : " & fullname &"<br>"
mailbody=mailbody & "Company Name : " & companyname &"<br>"
mailbody=mailbody & "Email Address : " & emailaddress &"<br>"
mailbody=mailbody & "Tel : " & tel &"<br>"
mailbody=mailbody & "Fax : " & fax &"<br>"
mailbody=mailbody & "Website : " & website &"<br>"
mailbody=mailbody & "Person Incharge : " & personincharge &"<br>"
mailbody=mailbody & "Comment : " & comment &"<br>"
mailbody=mailbody & "<br>Our representative will reply to you on your enquiry."	
mailbody=mailbody & "<br><br></font>" &  vbCrlf
mailbody=mailbody & "</body>" &  vbCrlf 
mailbody=mailbody & "</html>"& vbCrlf   

If emailaddress <> "" then	 
createEmail "","Emage Storr","sales@emagestorr.com",fullname,emailaddress,"","Emage Storr Contact Form",mailbody
createEmail "",fullname,emailaddress,"Emage Storr","neita.sehgal@emagestorr.com","sales@emagestorr.com;ateen19@hotmail.com","Emage Storr Contact Form",mailbody
End If
If formid="enquiryform" Then
response.redirect "enquiry.htm?send=ok" 
else
response.redirect "thankyou.htm" 
End if
%>
