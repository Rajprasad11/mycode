<%
Sub createEmail(smtpserver, sendname, sendemail, recipientname, recipientemail, bccemail, subject, content)
	'if smtpserver = "" then
	'	smtpserver =  "websmtp.cybersite.com.sg"
	'end if
	'Set Mail = Server.CreateObject("SMTPsvg.Mailer")
  	'Mail.ContentType = "text/html"
	'Mail.RemoteHost = smtpserver
	'Mail.FromName = sendname
	'Mail.FromAddress = sendemail
	'Mail.AddRecipient recipientname, recipientemail
	'if bccemail <> "" then
	'	bccarr = Split(Trim(bccemail), ";")
	'	If isarray(bccarr) then
	'		For i = 0 To UBound(bccarr)
	'			if not instr(bccarr(i),"@")<2 then
	'				Mail.AddBcc "Admin", bccarr(i) 
	'			end if
	'		Next
	'	else
	'		Mail.AddBcc "Admin", bccemail
	'	end if
	'end if
	'Mail.Subject = subject
	'Mail.BodyText = content
	'Mail.SendMail
	'set Mail = Nothing
	Set Mail = Server.CreateObject("CDO.Message")
	Mail.From = sendname & "<" & sendemail & ">"  
	Mail.To =  recipientname & "<" & recipientemail & ">" 
	if bccemail <> "" then
		Mail.Bcc = bccemail 'jimmy <jimmy@vibrantwave.com.sg>"
	end If
	Mail.Subject = subject
	Mail.HTMLBody = content
	Mail.Send
	set Mail = Nothing
end Sub
%>
