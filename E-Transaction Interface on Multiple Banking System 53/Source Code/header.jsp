<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> New Document </TITLE>
<META NAME="Generator" CONTENT="EditPlus">
<META NAME="Author" CONTENT="">
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
<script language="javascript" type="text/javascript">
var timerid = 0;
var images = new Array(	"MES.jpg","E1.gif","E3.jpg","E4.jpg","E5.jpg","E6.jpg");
var countimages = 0;
function startTime()
{
	if(timerid)
	{
		timerid = 0;
	}
	var tDate = new Date();
	
	if(countimages == images.length)
	{
		countimages = 0;
	}
	if(tDate.getSeconds() % 2 == 0)
	{
		document.getElementById("img1").src = images[countimages];
	}
	countimages++;
	
	timerid = setTimeout("startTime()",800);
}
</script>

</HEAD>

<body bgcolor="#0099FF">

<table width=1350 height=67 border=14 bordercolor="#FFFFFF" bgcolor="white">
<tr valign="top">
<th height="19">
<center>
<table width=900 height=20>
<tr><center> <img id="img1" src="e54.jpg"/></center>
</tr>
</table>
</center></th>
</tr>
</table>
</body>
</HTML>
