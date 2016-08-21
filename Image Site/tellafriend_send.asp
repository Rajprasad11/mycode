<!--#include file="common.asp"-->
<%
yourname=request.form("yourname")
youremail=request.form("youremail")
yourtelno=request.form("yourtelno")
friendname0=request.form("friendname0")
friendemail0=request.form("friendemail0")
friendtelno0=request.form("friendtelno0")
friendmessage0=request.form("friendmessage0")
friendname1=request.form("friendname1")
friendemail1=request.form("friendemail1")
friendtelno1=request.form("friendtelno1")
friendmessage1=request.form("friendmessage1")
friendname2=request.form("friendname2")
friendemail2=request.form("friendemail2")
friendtelno2=request.form("friendtelno2")
friendmessage2=request.form("friendmessage2")
friendname3=request.form("friendname3")
friendemail3=request.form("friendemail3")
friendtelno3=request.form("friendtelno3")
friendmessage3=request.form("friendmessage3")
friendname4=request.form("friendname4")
friendemail4=request.form("friendemail4")
friendtelno4=request.form("friendtelno4")
friendmessage4=request.form("friendmessage4")

mailbody=mailbody & "<html>"& vbCrlf 
mailbody=mailbody & "<HEAD>"& vbCrlf 
mailbody=mailbody & "<TITLE>Emage Storr - Refer A Friend</TITLE>"& vbCrlf 
mailbody=mailbody & "<META HTTP-EQUIV=""Content-Type"" CONTENT=""text/html; charset=iso-8859-1"">"& vbCrlf 
mailbody=mailbody & "</HEAD>"& vbCrlf 
mailbody=mailbody & "<body BGCOLOR=#FFFFFF alink=#000000 vlink=#000000 link=#000000>" & vbCrlf 
mailbody=mailbody & "<font size=""2"" face=""Arial, Helvetica, sans-serif"">"
mailbody=mailbody & "Your friend " & yourname & " (" & youremail &") had send you an email regarding the various program that are available at Emage Storr.<br><br>"
mailbody=mailbody & "Feel free to check it out at Emage Storr website at <a href='http://www.imagestorey.com'>http://www.imagestorey.com</a><br><br>"
mailbody=mailbody & "<strong>My Information</strong><br><br>" & vbCrlf 
mailbody=mailbody & "Name : " & yourname &"<br>"
mailbody=mailbody & "Email Address : " & youremail &"<br>"
mailbody=mailbody & "Telephone : " & yourtelno &"<br><br>"
mailbody=mailbody & "<strong>Your Friend's Information</strong><br><br>" & vbCrlf 
if friendemail0 <> "" or friendname0 <> "" then
	mailbody=mailbody & "<em><strong>FRIEND 1:</strong></em><br><br>" & vbCrlf 
	mailbody=mailbody & "Name : " & friendname0 &"<br>"
	mailbody=mailbody & "Email Address : " & friendemail0 &"<br>"
	mailbody=mailbody & "Telephone : " & friendtelno0 &"<br>"
	mailbody=mailbody & "Message : " & friendmessage0 &"<br><br>"
end if
if friendemail1 <> "" or friendname1 <> "" then
	mailbody=mailbody & "<em><strong>FRIEND 2:</strong></em><br><br>" & vbCrlf 
	mailbody=mailbody & "Name : " & friendname1 &"<br>"
	mailbody=mailbody & "Email Address : " & friendemail1 &"<br>"
	mailbody=mailbody & "Telephone : " & friendtelno1 &"<br>"
	mailbody=mailbody & "Message : " & friendmessage1 &"<br><br>"
end if
if friendemail2 <> "" or friendname2 <> "" then
	mailbody=mailbody & "<em><strong>FRIEND 3:</strong></em><br><br>" & vbCrlf 
	mailbody=mailbody & "Name : " & friendname2 &"<br>"
	mailbody=mailbody & "Email Address : " & friendemail2 &"<br>"
	mailbody=mailbody & "Telephone : " & friendtelno2 &"<br>"
	mailbody=mailbody & "Message : " & friendmessage2 &"<br><br>"
end if
if friendemail3 <> "" or friendname3 <> "" then
	mailbody=mailbody & "<em><strong>FRIEND 4:</strong></em><br><br>" & vbCrlf 
	mailbody=mailbody & "Name : " & friendname3 &"<br>"
	mailbody=mailbody & "Email Address : " & friendemail3 &"<br>"
	mailbody=mailbody & "Telephone : " & friendtelno3 &"<br>"
	mailbody=mailbody & "Message : " & friendmessage3 &"<br><br>"
end if
if friendemail4 <> "" or friendname4 <> "" then
	mailbody=mailbody & "<em><strong>FRIEND 5:</strong></em><br><br>" & vbCrlf 
	mailbody=mailbody & "Name : " & friendname4 &"<br>"
	mailbody=mailbody & "Email Address : " & friendemail4 &"<br>"
	mailbody=mailbody & "Telephone : " & friendtelno4 &"<br>"
	mailbody=mailbody & "Message : " & friendmessage4 &"<br><br>"
end if
mailbody=mailbody & "<br><br></font>" &  vbCrlf
mailbody=mailbody & "</body>" &  vbCrlf 
mailbody=mailbody & "</html>"& vbCrlf   

if friendemail0 <> "" or friendname0 <> "" then
	friendmail0=friendmail0 & "<html>"& vbCrlf 
	friendmail0=friendmail0 & "<HEAD>"& vbCrlf 
	friendmail0=friendmail0 & "<TITLE>Emage Storr - Refer A Friend</TITLE>"& vbCrlf 
	friendmail0=friendmail0 & "<META HTTP-EQUIV=""Content-Type"" CONTENT=""text/html; charset=iso-8859-1"">"& vbCrlf 
	friendmail0=friendmail0 & "</HEAD>"& vbCrlf 
	friendmail0=friendmail0 & "<body BGCOLOR=#FFFFFF alink=#000000 vlink=#000000 link=#000000>" & vbCrlf 
	friendmail0=friendmail0 & "<font size=""2"" face=""Arial, Helvetica, sans-serif"">"
	friendmail0=friendmail0 & "Your friend " & yourname & " (" & youremail &") had send you an email regarding the various program that are available at Emage Storr.<br><br>"
	friendmail0=friendmail0 & "Feel free to check it out at Emage Storr website at <a href='http://www.imagestorey.com'>http://www.imagestorey.com</a><br><br>"
	friendmail0=friendmail0 & "<B>Your Friend's Information</B><br><br>" & vbCrlf 
	friendmail0=friendmail0 & "Name : " & yourname &"<br>"
	friendmail0=friendmail0 & "Email Address : " & youremail &"<br>"
	friendmail0=friendmail0 & "Telephone : " & yourtelno &"<br><br>"
	friendmail0=friendmail0 & "<strong>Your Information</strong><br><br>" & vbCrlf 
	friendmail0=friendmail0 & "Name : " & friendname0 &"<br>"
	friendmail0=friendmail0 & "Email Address : " & friendemail0 &"<br>"
	friendmail0=friendmail0 & "Telephone : " & friendtelno0 &"<br>"
	friendmail0=friendmail0 & "Message : " & friendmessage0 &"<br><br>"
	friendmail0=friendmail0 & "<br><br></font>" &  vbCrlf
	friendmail0=friendmail0 & "</body>" &  vbCrlf 
	friendmail0=friendmail0 & "</html>"& vbCrlf   
	createEmail "",yourname,youremail,friendname0,friendemail0,"","Emage Storr Refer A Friend",friendmail0
end if
if friendemail1 <> "" or friendname1 <> "" then
	friendmail1=friendmail1 & "<html>"& vbCrlf 
	friendmail1=friendmail1 & "<HEAD>"& vbCrlf 
	friendmail1=friendmail1 & "<TITLE>Emage Storr - Refer A Friend</TITLE>"& vbCrlf 
	friendmail1=friendmail1 & "<META HTTP-EQUIV=""Content-Type"" CONTENT=""text/html; charset=iso-8859-1"">"& vbCrlf 
	friendmail1=friendmail1 & "</HEAD>"& vbCrlf 
	friendmail1=friendmail1 & "<body BGCOLOR=#FFFFFF alink=#000000 vlink=#000000 link=#000000>" & vbCrlf 
	friendmail1=friendmail1 & "<font size=""2"" face=""Arial, Helvetica, sans-serif"">"
	friendmail1=friendmail1 & "Your friend " & yourname & " (" & youremail &") had send you an email regarding the various program that are available at Emage Storr.<br><br>"
	friendmail1=friendmail1 & "Feel free to check it out at Emage Storr website at <a href='http://www.imagestorey.com'>http://www.imagestorey.com</a><br><br>"
	friendmail1=friendmail1 & "<B>Your Friend's Information</B><br><br>" & vbCrlf 
	friendmail1=friendmail1 & "Name : " & yourname &"<br>"
	friendmail1=friendmail1 & "Email Address : " & youremail &"<br>"
	friendmail1=friendmail1 & "Telephone : " & yourtelno &"<br><br>"
	friendmail1=friendmail1 & "<strong>Your Information</strong><br><br>" & vbCrlf 
	friendmail1=friendmail1 & "Name : " & friendname1 &"<br>"
	friendmail1=friendmail1 & "Email Address : " & friendemail1 &"<br>"
	friendmail1=friendmail1 & "Telephone : " & friendtelno1 &"<br>"
	friendmail1=friendmail1 & "Message : " & friendmessage1 &"<br><br>"
	friendmail1=friendmail1 & "<br><br></font>" &  vbCrlf
	friendmail1=friendmail1 & "</body>" &  vbCrlf 
	friendmail1=friendmail1 & "</html>"& vbCrlf   
	createEmail "",yourname,youremail,friendname1,friendemail1,"","Emage Storr Refer A Friend",friendmail1
end if
if friendemail2 <> "" or friendname2 <> "" then
	friendmail2=friendmail2 & "<html>"& vbCrlf 
	friendmail2=friendmail2 & "<HEAD>"& vbCrlf 
	friendmail2=friendmail2 & "<TITLE>Emage Storr - Refer A Friend</TITLE>"& vbCrlf 
	friendmail2=friendmail2 & "<META HTTP-EQUIV=""Content-Type"" CONTENT=""text/html; charset=iso-8859-1"">"& vbCrlf 
	friendmail2=friendmail2 & "</HEAD>"& vbCrlf 
	friendmail2=friendmail2 & "<body BGCOLOR=#FFFFFF alink=#000000 vlink=#000000 link=#000000>" & vbCrlf 
	friendmail2=friendmail2 & "<font size=""2"" face=""Arial, Helvetica, sans-serif"">"
	friendmail2=friendmail2 & "Your friend " & yourname & " (" & youremail &") had send you an email regarding the various program that are available at Emage Storr.<br><br>"
	friendmail2=friendmail2 & "Feel free to check it out at Emage Storr website at <a href='http://www.imagestorey.com'>http://www.imagestorey.com</a><br><br>"
	friendmail2=friendmail2 & "<B>Your Friend's Information</B><br><br>" & vbCrlf 
	friendmail2=friendmail2 & "Name : " & yourname &"<br>"
	friendmail2=friendmail2 & "Email Address : " & youremail &"<br>"
	friendmail2=friendmail2 & "Telephone : " & yourtelno &"<br><br>"
	friendmail2=friendmail2 & "<strong>Your Information</strong><br><br>" & vbCrlf 
	friendmail2=friendmail2 & "Name : " & friendname2 &"<br>"
	friendmail2=friendmail2 & "Email Address : " & friendemail2 &"<br>"
	friendmail2=friendmail2 & "Telephone : " & friendtelno2 &"<br>"
	friendmail2=friendmail2 & "Message : " & friendmessage2 &"<br><br>"
	friendmail2=friendmail2 & "<br><br></font>" &  vbCrlf
	friendmail2=friendmail2 & "</body>" &  vbCrlf 
	friendmail2=friendmail2 & "</html>"& vbCrlf   
	createEmail "",yourname,youremail,friendname2,friendemail2,"","Emage Storr Refer A Friend",friendmail2
end if
if friendemail3 <> "" or friendname3 <> "" then
	friendmail3=friendmail3 & "<html>"& vbCrlf 
	friendmail3=friendmail3 & "<HEAD>"& vbCrlf 
	friendmail3=friendmail3 & "<TITLE>Emage Storr - Refer A Friend</TITLE>"& vbCrlf 
	friendmail3=friendmail3 & "<META HTTP-EQUIV=""Content-Type"" CONTENT=""text/html; charset=iso-8859-1"">"& vbCrlf 
	friendmail3=friendmail3 & "</HEAD>"& vbCrlf 
	friendmail3=friendmail3 & "<body BGCOLOR=#FFFFFF alink=#000000 vlink=#000000 link=#000000>" & vbCrlf 
	friendmail3=friendmail3 & "<font size=""2"" face=""Arial, Helvetica, sans-serif"">"
	friendmail3=friendmail3 & "Your friend " & yourname & " (" & youremail &") had send you an email regarding the various program that are available at Emage Storr.<br><br>"
	friendmail3=friendmail3 & "Feel free to check it out at Emage Storr website at <a href='http://www.imagestorey.com'>http://www.imagestorey.com</a><br><br>"
	friendmail3=friendmail3 & "<B>Your Friend's Information</B><br><br>" & vbCrlf 
	friendmail3=friendmail3 & "Name : " & yourname &"<br>"
	friendmail3=friendmail3 & "Email Address : " & youremail &"<br>"
	friendmail3=friendmail3 & "Telephone : " & yourtelno &"<br><br>"
	friendmail3=friendmail3 & "<strong>Your Information</strong><br><br>" & vbCrlf 
	friendmail3=friendmail3 & "Name : " & friendname3 &"<br>"
	friendmail3=friendmail3 & "Email Address : " & friendemail3 &"<br>"
	friendmail3=friendmail3 & "Telephone : " & friendtelno3 &"<br>"
	friendmail3=friendmail3 & "Message : " & friendmessage3 &"<br><br>"
	friendmail3=friendmail3 & "<br><br></font>" &  vbCrlf
	friendmail3=friendmail3 & "</body>" &  vbCrlf 
	friendmail3=friendmail3 & "</html>"& vbCrlf   
	createEmail "",yourname,youremail,friendname3,friendemail3,"","Emage Storr Refer A Friend",friendmail3
end if
if friendemail4 <> "" or friendname4 <> "" then
	friendemail4=friendemail4 & "<html>"& vbCrlf 
	friendemail4=friendemail4 & "<HEAD>"& vbCrlf 
	friendemail4=friendemail4 & "<TITLE>Emage Storr - Refer A Friend</TITLE>"& vbCrlf 
	friendemail4=friendemail4 & "<META HTTP-EQUIV=""Content-Type"" CONTENT=""text/html; charset=iso-8859-1"">"& vbCrlf 
	friendemail4=friendemail4 & "</HEAD>"& vbCrlf 
	friendemail4=friendemail4 & "<body BGCOLOR=#FFFFFF alink=#000000 vlink=#000000 link=#000000>" & vbCrlf 
	friendemail4=friendemail4 & "<font size=""2"" face=""Arial, Helvetica, sans-serif"">"
	friendemail4=friendemail4 & "Your friend " & yourname & " (" & youremail &") had send you an email regarding the various program that are available at Emage Storr.<br><br>"
	friendemail4=friendemail4 & "Feel free to check it out at Emage Storr website at <a href='http://www.imagestorey.com'>http://www.imagestorey.com</a><br><br>"
	friendemail4=friendemail4 & "<B>Your Friend's Information</B><br><br>" & vbCrlf 
	friendemail4=friendemail4 & "Name : " & yourname &"<br>"
	friendemail4=friendemail4 & "Email Address : " & youremail &"<br>"
	friendemail4=friendemail4 & "Telephone : " & yourtelno &"<br><br>"
	friendemail4=friendemail4 & "<strong>Your Information</strong><br><br>" & vbCrlf 
	friendemail4=friendemail4 & "Name : " & friendname4 &"<br>"
	friendemail4=friendemail4 & "Email Address : " & friendemail4 &"<br>"
	friendemail4=friendemail4 & "Telephone : " & friendtelno4 &"<br>"
	friendemail4=friendemail4 & "Message : " & friendmessage4 &"<br><br>"
	friendemail4=friendemail4 & "<br><br></font>" &  vbCrlf
	friendemail4=friendemail4 & "</body>" &  vbCrlf 
	friendemail4=friendemail4 & "</html>"& vbCrlf   
	createEmail "",yourname,youremail,friendname4,friendemail4,"","Emage Storr Refer A Friend",friendemail4
end if
createEmail "","Emage Storr","neita.sehgal@emagestorr.com",yourname,youremail,"","Emage Storr Refer A Friend",mailbody
createEmail "",yourname,youremail,"Emage Storr","neita.sehgal@emagestorr.com","","Emage Storr Refer A Friend",mailbody
 
response.redirect "referafriendTQ.htm" 
%>
