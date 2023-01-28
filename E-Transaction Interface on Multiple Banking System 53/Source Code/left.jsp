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
var images = new Array("mony.jpg","img11.jpg","img14.jpg","img15.jpg","img16.jpg","img6.jpg","img8.jpg","82.jpg","20.jpg");
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
	
	timerid = setTimeout("startTime()", 800);
}
</script>

</HEAD>

<body onload="startTime();" style="overflow: hidden" bgcolor="#0099FF">
<img id="img1" src="img10.jpg"/>

</body>
</HTML>
