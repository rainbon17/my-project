<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/2/16
  Time: 下午 06:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title></title>
<script type="text/javascript" src="/resources/js/prototype.js"></script>
</head>
<body>
<script>

  function replaceButtonText(buttonId, text)
  {
    if (document.getElementById)
    {
      var button=document.getElementById(buttonId);
      if (button)
      {
        if (button.childNodes[0])
        {
          //alert("ch");
          button.childNodes[0].nodeValue=text;
        }
        else if (button.value)
        {
          //alert("val");
          button.value=text;
        }
        else //if (button.innerHTML)
        {
          //alert("inner");
          button.innerHTML=text;
        }
      }
    }
  }
</script>
<h2 align=center>AJAX Webpage Design Using Prototype.js</h2>
<hr>
<input  type="button" id="mybutton" value="mybutton" />
<button class='scalable' name='submit' id="btn">
  <span>old Text</span>
</button>
<script>

  $('mybutton').observe('click',function(){
    document.getElementById("mybutton").value="abc Text";
//    replaceButtonText('myButton1','abcd');
  });
  $('btn').observe('click',function(){
    replaceButtonText('btn','abcd');
  });
</script>
</body>
</html>

