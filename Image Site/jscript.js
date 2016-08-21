function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function getQueryString(strParaName) {
	var strQS=location.search.substring(1,location.search.length);
	var strArgs = "";
	var strName = "";
	var strValue = "";
	var strTemp = "";

	if (strQS!="") {
			strArgs = strQS.split('&');

			for (var i=0;i<strArgs.length;i++)
			{
				var pair = strArgs[i].split('=');
				
				// Fix broken unescaping
				strTemp = unescape(pair[0]).split('+');
				strName = strTemp.join(' ');
				
				strTemp = unescape(pair[1]).split('+');
				strValue = strTemp.join(' ');
				
				if (strParaName==strName) return strValue;
			}

	}
	return -1;
}
function Toggle(name, name1,isOn){ //name is "here" , name1 is message
	if(isOn){	//show message

	document.getElementById(name1).style.visibility='visible'; 
	document.getElementById(name1).style.display='inline';
	document.getElementById(name).style.visibility='hidden';
	document.getElementById(name).style.display='none';
	}else{ //hide message
	document.getElementById(name1).style.visibility='hidden'; 
	document.getElementById(name1).style.display='none'; 
	document.getElementById(name).style.visibility='visible';
	document.getElementById(name).style.display='inline';
	}
}
function toggle(target,imgname, isOn){
	window.onresize = null;
	obj=document.getElementById(target);
	obj2=document.getElementById(imgname);
	if(isOn){
		obj.style.visibility='hidden';
		obj.style.display='none';
		obj2.style.visibility='visible';
		obj2.style.display='inline';
	}
	else{
		obj.style.visibility='visible';
		obj.style.display='inline';
		obj2.style.visibility='hidden';
		obj2.style.display='none';
	}
}
var now=new Date();
var day =  now.getDate();
var month=now.getMonth()+1;
var year = now.getYear() ;

function isInteger(val) {
	var digits="1234567890+";
	for (var i=0; i < val.length; i++) {
		if (digits.indexOf(val.charAt(i))==-1) { return false; }
	}
	return true;
}
function validNum(check, err_msg){
   str=new String(check.value)
   if(isNaN(str) == true ){
      alert(err_msg)
	  check.focus();
	  return false;
   }
   if(check.value<0) {
   	alert(err_msg)
   	check.focus();
   	return false;
   }
 }
function emptyfield(check,err_msg){
   if ((check.value == "") || (check.value.charAt(0) == " ")){
      alert(err_msg);
	  check.focus();
	  return false;
   }
}
function valid(vl,errm) // varying number of arguments
{
	var i;
	validated=true;
	// scan regular expressions
	for (i=2;i<valid.arguments.length;i++) 
	{
		var rx;
		//alert(valid.arguments[i]);
		rx=new RegExp(valid.arguments[i]);
		if ((a=rx.exec(vl))!=null && a[0].length==vl.length) {
			//alert("output:" + a[0]);
			return true;  // ok
		}
	}
	// no matches...
	alert(errm);
	validated=false;  // tell onsubmit if necessary
	return false;
}

function checkOneEmail(check, err_msg)
{
	// [\w-_]+(\.[\w-_]+)*\@+[\w-_]+(\.[\w-_]+)+
	//alert(vl);
	rv=valid(check,err_msg,"[\\w-_]+(\\.[\\w-_]+)*\\@+[\\w-_]+(\\.[\\w-_]+)+");
	return rv;
}
function checkEmail(check){
   email = new String(check.value);
   errmsg="Invalid Email Address";
     if (email.indexOf("@") == -1){
	    alert(errmsg);
		check.focus();
		return false;
	 }
	 else
	 {
	   idx1=email.indexOf("@");
	 }
	 if(email.indexOf(".") == -1){
	    alert(errmsg);
		check.focus();
		return false;
	 }
	 else{
	    idx2=email.indexOf(".");
	 }
	 str1=email.substring(0,idx1);
	 if(str1.length < 2){
	    alert(errmsg);
		check.focus();
		return false;
	 }
	 str2=email.substring(idx1,idx2);
	 if(str2.length < 2){
	    alert(errmsg);
		check.focus();
		return false;
	 }
	 str3=email.substring(idx2,email.length-1);
	 if(str3.length < 2){
		alert(errmsg);
		check.focus();
		return false;
	 }
}

function openWindow(url,toolbar ,x ,y) {
	subWindow=open(url, "newwin", "status=yes, resizable=yes, toolbar="+toolbar+", left=100,top=100, scrollbars=yes, width="+x+", height="+y+"");
	if(subWindow.opener==null) subWindow.opener=self;
}

function getDate(value) {
	if (value == null)
		return null;

	var nIndYear = 6;  
	var nIndMonth = 3; 
	var nIndDay = 0;
	var nYear = parseInt(value.substring(nIndYear, nIndYear+4));
	var nMonth = LZ(parseInt(value.substring(4, 6)));
	var nDay = LZ(parseInt(value.substring(nIndDay, nIndDay + 2)));

	//alert(nYear + "-" + nMonth + "-" + nDay);	

	var outDate = new Date(nYear, nMonth, nDay);
	//var outDate = new Date();
	//outDate.setFullYear(nYear);
	//outDate.setMonth(nMonth);
	//outDate.setDate(nDay);
	//alert (outDate);
	return outDate;
}

function isDateBeforeToday(sEffDate) {
	var dtEffDate = getDate(sEffDate);
	 
	dtEffDate = new Date(dtEffDate.getFullYear(), dtEffDate.getMonth(), dtEffDate.getDate(), 00,00,00)
	//alert (dtEffDate + " = " + dtEffDate.getTime());

	var today = new Date();
	today = new Date(today.getFullYear(), today.getMonth(), today.getDate(), 00,00,00)
	//alert (today + " = " + today.getTime());

	if (dtEffDate.getTime() == today.getTime()){
		return true;
      //alert ("equal");
   }
	else if (dtEffDate < today){
		return false;
		//alert ("early");
   }
	else if (dtEffDate > today){
		return true;
		//alert ("later");
   }
}

function LZ(x) {return(x<0||x>9?"":"0")+x}

function ValidateDate(dDay, dMonth, dYear) {
	
	var d="312831303130313130313031";
	var yr;
	var sDate = parseInt(dDay.length + dMonth.length + dYear.length);
	/* For invalid dates, return false */
	if (sDate.length>0 && sDate.length<8) return false;
	
	// Expected inDate format: ddmmyyyy
	//dd = sDate.substring(0,2);
	//mm = sDate.substring(2,4);
	dd = LZ(dDay);
	mm =LZ(dMonth);
	yy = dYear;

	/* Now, convert the string yr1 into a numeric and test for leap year.
	If it is, change the end of month day string for Feb to 29  */		
	
	var isLeap = false;
	yy=yy*1;
	if (yy%400==0) isLeap = true
	else if (yy%100==0) isLeap = false
	else if (yy%4==0) isLeap = true;
	if (isLeap) d=d.substring(0,2)+"29" + d.substring(4,d.length);
	
	/* Pick the end of month day from the d string for this month. */

	pos=(mm*2)-2;
	ld=d.substring(pos,pos+2)+0;
	if (dd<1||dd>ld)
		return false;
	else if (mm<1||mm>12)
		return false;
	else if (yy<1870||yy>2050)
		return false;

	return true;		

}
function tellafriend_check(frm) {
	var okFlag = true;
	if(emptyfield(frm.yourname, "Please enter your Name")==false)  
	{
		okFlag = false;
		return false;
	}
	if(emptyfield(frm.youremail, "Please enter your Email Address")==false)  
	{
		okFlag = false;
		return false;
	}
	if(checkOneEmail(frm.youremail.value,"Please enter a valid Email Address!")==false) {
		frm.youremail.focus();
		okFlag = false;
		return;
	}
	if(emptyfield(frm.yourtelno, "Please enter your Telephone")==false)  
	{
		okFlag = false;
		return false;
	}
	if (frm.yourtelno.value != "") {
		if (validNum(frm.yourtelno,"Telephone must be integer.")==false){
		frm.yourtelno.focus();
		return false;
		}
	}
	if(emptyfield(frm.friendname0, "Please enter FRIEND 1 - Name")==false)  
	{
		okFlag = false;
		return false;
	}
	
	if(emptyfield(frm.friendemail0, "Please enter FRIEND 1 - Email Address")==false) 
	{
		okFlag = false;
		return false;
	}
	if (frm.friendtelno0.value != "") {
		if (validNum(frm.friendtelno0,"FRIEND 1 - Telephone must be integer.")==false){
		frm.friendtelno0.focus();
		return false;
		}
	}
	//FRIEND 2
	if (frm.friendname1.value != "" || frm.friendemail1.value != "" || frm.friendtelno1.value != "" || frm.friendmessage1.value != "") {
		if(emptyfield(frm.friendname1, "Please enter FRIEND 2 - Name")==false)  
		{
			okFlag = false;
			return false;
		}
		
		if(emptyfield(frm.friendemail1, "Please enter FRIEND 2 - Email Address")==false) 
		{
			okFlag = false;
			return false;
		}
		if (frm.friendtelno1.value != "") {
			if (validNum(frm.friendtelno1,"FRIEND 2 - Telephone must be integer.")==false){
			frm.friendtelno1.focus();
			return false;
			}
		}
	} 
	//FRIEND 3
	if (frm.friendname2.value != "" || frm.friendemail2.value != "" || frm.friendtelno2.value != "" || frm.friendmessage2.value != "") {
		if(emptyfield(frm.friendname2, "Please enter FRIEND 3 - Name")==false)  
		{
			okFlag = false;
			return false;
		}
		
		if(emptyfield(frm.friendemail2, "Please enter FRIEND 3 - Email Address")==false) 
		{
			okFlag = false;
			return false;
		}
		if (frm.friendtelno2.value != "") {
			if (validNum(frm.friendtelno2,"FRIEND 3 - Telephone must be integer.")==false){
			frm.friendtelno2.focus();
			return false;
			}
		}
	}
	//FRIEND 4
	if (frm.friendname3.value != "" || frm.friendemail3.value != "" || frm.friendtelno3.value != "" || frm.friendmessage3.value != "") {
		if(emptyfield(frm.friendname3, "Please enter FRIEND 4 - Name")==false)  
		{
			okFlag = false;
			return false;
		}
		
		if(emptyfield(frm.friendemail3, "Please enter FRIEND 4 - Email Address")==false) 
		{
			okFlag = false;
			return false;
		}
		if (frm.friendtelno3.value != "") {
			if (validNum(frm.friendtelno3,"FRIEND 4 - Telephone must be integer.")==false){
			frm.friendtelno3.focus();
			return false;
			}
		}
	}
	//FRIEND 5
	if (frm.friendname4.value != "" || frm.friendemail4.value != "" || frm.friendtelno4.value != "" || frm.friendmessage4.value != "") {
		if(emptyfield(frm.friendname4, "Please enter FRIEND 5 - Name")==false)  
		{
			okFlag = false;
			return false;
		}
		
		if(emptyfield(frm.friendemail4, "Please enter FRIEND 5 - Email Address")==false) 
		{
			okFlag = false;
			return false;
		}
		if (frm.friendtelno4.value != "") {
			if (validNum(frm.friendtelno4,"FRIEND 5 - Telephone must be integer.")==false){
			frm.friendtelno4.focus();
			return false;
			}
		}
	}
	if (okFlag == true) {
		frm.action = "tellafriend_send.asp";
		frm.submit();
	}

}
function contact_check(frm) {
	var okFlag = true;
	
	if(emptyfield(frm.enquiryfor, "Please enter Enquiry For!")==false) {
	 	frm.enquiryfor.focus();
		okFlag = false;
		return;
	}
	if(emptyfield(frm.fullname, "Please enter Name!")==false) {
	 	frm.fullname.focus();
		okFlag = false;
		return;
	}
	if(emptyfield(frm.emailaddress, "Please enter Email Address!")==false) {
		frm.emailaddress.focus();
		okFlag = false;
		return;
	}

	/*if(checkEmail(frm.emailaddress, "Please enter a valid Email Address!")==false) {
	 	frm.emailaddress.focus();
	   	okFlag = false;
		return false;
	}*/
	if(checkOneEmail(frm.emailaddress.value,"Please enter a valid Email Address!")==false) {
		frm.emailaddress.focus();
		okFlag = false;
		return;
	}
	if (okFlag == true) {
		frm.action = "contact_send.asp";
		frm.submit();
	}
}
function contact_clear(frm) {
	frm.fullname.value = "";
	frm.companyname.value = "";
	frm.emailaddress.value = "";
	frm.tel.value = "";
	frm.fax.value = "";
	frm.website.value = "";
	frm.personincharge.value = "";
	frm.comment.value = "";
}
function LaunchWin(url, name, winwidth, winheight){
	if (winwidth==0) {
	var winwidth=screen.width-5;
	}
	if (winheight==0) {
	var winheight=screen.height-100;
	}
	window.open(url,name,'scrollbars=yes,resizable=no,menubar=no,statusbar=no,left=0,screenX=0,top=0,screenY=0,status=0,width='+winwidth+',height='+winheight);
}