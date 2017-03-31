<%@ page language="java" contentType="text/html;charset=big5"%>
<%
	HttpResponseContext resp = new HttpResponseContext(request);
	List<Map<String, String>> listSYSTEM_CODE = resp.getOutputData("listSYSTEM_CODE") != null ? (List<Map<String, String>>) resp.getOutputData("listSYSTEM_CODE") : Collections.EMPTY_LIST;
%>
<%@page import="com.igsapp.wibc.dataobj.html.HttpResponseContext"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Collections"%>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-tw">
<meta http-equiv="Content-Type" content="text/html; charset=big5">
<title></title>
<link href=" <%=request.getContextPath()%>/html/CM/css/cm.css" rel="stylesheet" type="text/css">
<!-- ajax JS File -->
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="<%=request.getContextPath()%>/html/CM/js/ajax/prototype.js"></script>
<script src="<%=request.getContextPath()%>/html/CM/js/ajax/CSRUtil.js"></script>

<script>
<!--
var webcontext = '<%=request.getContextPath()%>/servlet/HttpDispatcher/AEC1_1000/';

var validator;
function initApp(){
	// 頁面 title 定位
	fix();
	AddHotKey();
	//顯示執行結果
	displayMessage();
	validator = new Validator();
   	validator.errHandler = new AlertHandler();
	
	//cascaevent();
	
}

function AddHotKey() {
}

//-->
</script>
<script>document.documentElement.className = "jss";</script>
<!--If JavaScript is enabled, hide the block of text,
which we will fade in later.-->
<style>
p {
border: 3px solid red;
padding: 10px;
width: 400px;
background: #FFF;
height:111px;
}
p.odd {
/* Positioning information goes in here */
position:static; top: 0px; left: 0px;
}

.jss #fadein { display: none }
</style>
</head>
<body bgcolor="#F0FBC6" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad='initApp()' onResize="fix()" onScroll="fix()">
RTN<script type="text/javascript">

var _pageController;

function dotest(){
	
	var p = document.getElementsByTagName("p")[0];
	// Check the computed value of the height
	//alert( p.style.height + " should be null" );
	//alert( getStyle2( p, "height" ) + " should be 100px" );
	//window.scrollTo( 0, pageY( document.getElementById("sdv1") ) );
	jQuery("#tbl2").slideDown( 1000, function(){
	jQuery(this).slideUp( 1000 );
	});

	var obj = {
			name : "John",
			last : "Resig",
			city : "Cambridge",
			zip : 02140
		};
		var DTAEC100VO={
			REPORT_TYPE:'alvintype',
			SYS_ID:'SVR09800006'
		};
		
		var tmp = [ 1, 2, 3, 4, 5, 3 ];
		//console.log("53:"+Object.toJSON(obj));
		//console.log("53:"+Object.toQueryString(obj));

		var array = [];
		for ( var key in obj) {
			array.push(obj[key]);
		}

		//var sstyle = getStyle2($('bar1'), 'position');
		/*Object.toJSON($('bar1').style)

		alert("88:"+Object.toJSON(array));
		*/
		array=[];
		var c = document.getElementById('dv1').childNodes;
		var lc=document.getElementById('dv1').childNodes[1];
		//alert("91:"+lc.nodeType);
		for (var i=0;i<9;i++) {
			if(c[i].nodeType != '3'){
				array.push(c[i].nodeName+c[i].nodeType);
			}
		}
		
		
		//("88:"+Object.toJSON(array));
		
		var fn=document.getElementById('dv1').childNodes[1].next();
		//addEvent(window,"load", function() {
		//	// Perform HTML DOM operations
		//	//next( ); 
		//	document.getElementById("everywhere").style.background = 'blue'
		//});
		
		Element.prototype.events = {};
		Element.prototype.addEvent = function (event, callBack) {
			if (this.events["on" + (event.replace("on", ""))] == undefined) {
				this.events["on" + (event.replace("on", ""))] = [];
			}
			this.events["on" + (event.replace("on", ""))].push(callBack);
			if (this["on" + (event.replace("on", ""))] == undefined) {
				this["on" + (event.replace("on", ""))] = function (e) {
					for (i in this.events["on" + (event.replace("on", ""))]) {
						this.events["on" + (event.replace("on", ""))][i](e);
					}
				}
			}
		}
		
		
		
		new Ajax.Request(
		webcontext + 'test',
		{
			parameters:{
				DTAEC100VO: DTAEC100VO,
				OBJ : Object.toJSON(obj),
				CONTRACT_NO : 'AEC11000'
			},
			 onSuccess: function(XHT, resp) {
				if(resp.RTN){
					//alert("87:"+resp.RTN);
				}
				if(resp.DTAEC100vo){
					//alert("90:"+ Object.toJSON(resp.DTAEC100vo));
					//alert("90:"+ resp.DTAEC100vo.REPORT_TYPE);
				}
				if(resp.HISTORY){
					//var map=resp.
					var hhisto= $H(resp.HISTORY);
					//alert("100:"+ (hhisto.get('name')));
					//alert("103:"+ (resp.HISTORY['name']));
				}
			 }
		});

		// 2017-03 @PG勝偉
		//empty(id('TBODY_RESULT') );
		//empty(id('TFOOT_TBODY_RESULT') );
		//append( document.getElementsByTagName("ul")[0], "<li>Mouse trap.</li>" );
		var ultxt=text( document.getElementsByTagName("ul")[0] );
		tag("input")[0].setAttribute("value","Your Name");
		tag("div")[0].id = "main";
		var div = create("div");
		div.className = "items";
		div.id = "all";
		append( document.body, div );
		var eve=id('everywhere');
		var hei=eve.getAttribute('class');
		mover();
		var li = document.getElementsByTagName("li");
		for ( var i = 0; i < li.length; i++ ) {
		li[i].onclick = handleClick;
		}
		// The click handler – when called it changes the background and
		// foreground color of the specified element
		function handleClick() {
			this.style.backgroundColor = "yellow";
			this.style.color = "pink";
		}
		//iborder();
		aclick();
	
		
		
		 
		//alert(":"+$('dv1').hide());
		validator.errHandler.clear();
		validator.clear();
		validator.errHandler = new AlertHandler();
		validator.define('REPORT_ID', '', '欄位內容未有異動, 請按[修改]並重新變動數值', 'string',1);

		 if (!validator.validate()) {
			validator.errHandler.display();
			return true;
		} else {
			initValidator();
			return false;
		} /**/

		// [ 3, 4, 5, 6, 7, 5 ]
		//var array = [ key for ( key in obj ); ];

		// New Way
	} //==end test
	
	
	
function cascaevent(){
		var a = document.getElementsByTagName("a");
	for ( var i = 0; i < a.length; i++ ) {
	// Attach a mouseover and focus event handler to the <a> element,
	// which changes the <a>s background to blue when the user either
	// mouses over the link, or focuses on it (using the keyboard)
	a[i].onmouseover = a[i].onfocus = function() {
	this.style.backgroundColor = 'green';
	};
		// Attach a mouseout and blur event handler to the <a> element
	// which changes the <li>s background back to its default white
	// when the user moves away from the link
	a[i].onmouseout = a[i].onblur = function() {
	this.style.backgroundColor = 'red';
	};
	}
}
	function stopBubble(e) {
		// If an event object is provided, then this is a non-IE browser
		if ( e && e.stopPropagation )
			// and therefore it supports the W3C stopPropagation() method
			e.stopPropagation();
		else
			// Otherwise, we need to use the Internet Explorer
			// way of cancelling event bubbling
			window.event.cancelBubble = true;
	}
	function iborder()	{
		var all = document.getElementsByTagName("*");
		for ( var i = 0; i < all.length; i++ ) {
		// Watch for when the user moves his mouse over the element
		// and add a red border around the element
		all[i].onmouseover = function(e) {
		this.style.border = "1px solid red";
		stopBubble( e );
		};
		// Watch for when the user moves back out of the element
		// and remove the border that we added
		all[i].onmouseout = function(e) {
		this.style.border = "0px";
		stopBubble( e );
		};
		}
	}
	function aclick(){
		var iframe = document.getElementById("iframe");
		// Locate all <a> elements on the page
		var a = document.getElementsByTagName("a");
		for ( var i = 0; i < a.length; i++ ) {
		// Bind a click handler to the <a>
		a[i].onclick = function(e) {
			// Set the IFrame's location
			iframe.src = this.href;
			// Prevent the browser from ever visiting the web site pointed to from
			// the <a> (which is the default action)
			return stopDefault( e );
			};
		}
	}
	function stopDefault( e ) {
		// Prevent the default browser action (W3C)
		if ( e && e.preventDefault )
			e.preventDefault();
			// A shortcut for stoping the browser action in IE
		else
			window.event.returnValue = false;
		return false;
	}
	
	function mover(){
		var li = document.getElementsByTagName("li");
		for ( var i = 0; i < li.length; i++ ) {
		// Attach a mouseover event handler to the <li> element,
		// which changes the <li>s background to blue.
		li[i].onmouseover = function() {
		this.style.backgroundColor = 'blue';
		};
		// Attach a mouseout event handler to the <li> element
		// which changes the <li>s background back to its default white
		li[i].onmouseout = function() {
		this.style.backgroundColor = 'white';
		};
		}
	}
	
	function id(name) {
	return document.getElementById(name);
	}
	function tag(name, elem) {
	// If the context element is not provided, search the whole document
	return (elem || document).getElementsByTagName(name);
	}
	function create( strElem ) {
		return document.createElementNS ?
		document.createElementNS( 'http://www.w3.org/1999/xhtml', strElem ) :
		document.createElement( strElem );
	}
	function tag(name, elem) {
		// If the context element is not provided, search the whole document
		return (elem || document).getElementsByTagName(name);
	}
	function addEvent(elem, event, func ) {
			if (!!window.attachEvent){

				elem.attachEvent('on' + event, func);
			}
			else{
			   elem.addEventListener(event, func, false);
			}
		}
	function remove( elem ) {
		if ( elem ) elem.parentNode.removeChild( elem );
	}
	function empty( elem ) {
		while ( elem.firstChild )
		remove( elem.firstChild );
	}
	function checkElem(a) {
	var r = [];
	// Force the argument into an array, if it isn't already
	if ( a.constructor != Array ) a = [ a ];
	for ( var i = 0; i < a.length; i++ ) {
	// If there's a String
	if ( a[i].constructor == String ) {
	// Create a temporary element to house the HTML
	var div = document.createElement("div");
	// Inject the HTML, to convert it into a DOM structure
	div.innerHTML = a[i];
	// Extract the DOM structure back out of the temp DIV
	for ( var j = 0; j < div.childNodes.length; j++ )
	r[r.length] = div.childNodes[j];
	} else if ( a[i].length ) { // If it's an array
	// Assume that it's an array of DOM Nodes
	for ( var j = 0; j < a[i].length; j++ )
	r[r.length] = a[i][j];
	} else { // Otherwise, assume it's a DOM Node
	r[r.length] = a[i];
	}
	}
	return r;
	}
	function append( parent, elem ) {
	var elems = checkElem( elem );
	for ( var i = 0; i < elems.length; i++ ) {
	parent.appendChild( elems[i] );
	}
	}
	HTMLElement.prototype.next = function() {
		var elem = this;
		do {
		elem = elem.nextSibling;
		} while ( elem && elem.nodeType != 1 );
		return elem;
	};
	
	function text(e) {
	var t = "";
	// If an element was passed, get its children,
	// otherwise assume it's an array
	e = e.childNodes || e;
	// Look through all child nodes
	for ( var j = 0; j < e.length; j++ ) {
		// If it's not an element, append its text value
		// Otherwise, recurse through all the element's children
		t += e[j].nodeType != 1 ?
		e[j].nodeValue : text(e[j].childNodes);
	}
	// Return the matched text
	return t;
}
	// Find the X (Horizontal, Left) position of an element
	function pageX(elem) {
		// See if we're at the root element, or not
		return elem.offsetParent ?
		// If we can still go up, add the current offset and recurse upwards
		elem.offsetLeft + pageX( elem.offsetParent ) :
		// Otherwise, just get the current offset
		elem.offsetLeft;
	}
	// Find the Y (Vertical, Top) position of an element
	function pageY(elem) {
		// See if we're at the root element, or not
		return elem.offsetParent ?
		// If we can still go up, add the current offset and recurse upwards
		elem.offsetTop + pageY( elem.offsetParent ) :
		// Otherwise, just get the current offset
		elem.offsetTop;
	}
	// Get a style property (name) of a specific element (elem)
	function getStyle2( elem, name ) {
		// If the property exists in style[], then it's been set
		// recently (and is current)
		if (elem.style[name])
			return elem.style[name];
			// Otherwise, try to use IE's method
		else if (elem.currentStyle)
			return elem.currentStyle[name];
			// Or the W3C's method, if it exists
		else if (document.defaultView && document.defaultView.getComputedStyle) {
			// It uses the traditional 'text-align' style of rule writing,
			// instead of textAlign
			name = name.replace(/([A-Z])/g,"-$1");
			name = name.toLowerCase();
			// Get the style object and get the value of the property (if it exists)
			var s = document.defaultView.getComputedStyle(elem,"");
			return s && s.getPropertyValue(name);
			// Otherwise, we're using some other browser
		} else
			return null;
	}
	


	function doQuery(obj) {
		validator.errHandler.clear();
		validator.clear();
		validator.errHandler = new AlertHandler();

		if ($F('REPORT_ID').blank() && $F('SYSTEM_CODE').blank()
				&& $F('REPORT_NAME').blank() && $F('REPORT_DESC').blank()
				&& $F('REPORT_TYPE').blank() && $F('SQL_STRING').blank()
				&& $F('CREATE_ID').blank()) {
			validator.define('REPORT_ID', '', '請至少輸入一個條件', 'false');
			validator.define('SYSTEM_CODE', '', '', 'false');
			validator.define('REPORT_NAME', '', '', 'false');
			validator.define('REPORT_DESC', '', '', 'false');
			validator.define('REPORT_TYPE', '', '', 'false');
			validator.define('SQL_STRING', '', '', 'false');
			validator.define('CREATE_ID', '', '', 'false');
		}

		if (!validator.validate()) {
			validator.errHandler.display();
			return;
		} else {
			validator = new Validator();
			validator.errHandler = new AlertHandler();
		}

		if (_pageController) {
			_pageController.resetData($A());
		}

		new Ajax.Request(
				webcontext + 'query',
				{
					parameters : {
						REPORT_ID : $F('REPORT_ID'),
						SYSTEM_CODE : $F('SYSTEM_CODE'),
						REPORT_NAME : $F('REPORT_NAME'),
						REPORT_DESC : $F('REPORT_DESC'),
						REPORT_TYPE : $F('REPORT_TYPE'),
						SQL_STRING : $F('SQL_STRING'),
						CREATE_ID : $F('CREATE_ID')
					},
					onSuccess : function(XHT, resp) {
						if (resp.result) {
							_pageController = new PageController(
									$A(resp.result),
									10,
									$('TBODY_RESULT'),
									function(vo, index) {
										/*
										<tr align="center" class="tbBlue">
										<td nowrap="nowrap">報表ID</td>
										<td nowrap="nowrap">系統別</td>
										<td nowrap="nowrap">報表名稱</td>
										<td nowrap="nowrap">報表說明</td>
										<td nowrap="nowrap">報表類型</td>
										<td nowrap="nowrap">DS 連線名稱</td>
										<td nowrap="nowrap">前置程序</td>
										<td nowrap="nowrap">後置程序</td>
										<td nowrap="nowrap">列印模式</td>
										<td nowrap="nowrap">建立人員</td>
										<td nowrap="nowrap">建立日期時間</td>
										</tr>
										 */
										var tr = new Element('tr', {
											align : 'left'
										});
										tr
												.insert(new Element('td')
														.update(new Element(
																'a',
																{
																	href : 'javascript:doModify(\''
																			+ vo.REPORT_ID
																			+ '\')'
																})
																.update(vo.REPORT_ID)));
										tr.insert(new Element('td')
												.update(vo.SYSTEM_CODE));
										tr.insert(new Element('td')
												.update(vo.REPORT_NAME));
										tr
												.insert(new Element('td')
														.update(vo.REPORT_DESC ? vo.REPORT_DESC
																: ''));
										tr.insert(new Element('td')
												.update(vo.REPORT_TYPE));
										tr.insert(new Element('td')
												.update(vo.DATA_SOURCE_NAME));
										tr
												.insert(new Element('td')
														.update(vo.MODULE_NAME_START ? vo.MODULE_NAME_START
																: ''));
										tr
												.insert(new Element('td')
														.update(vo.MODULE_NAME_END ? vo.MODULE_NAME_END
																: ''));
										tr
												.insert(new Element('td')
														.update(vo.PRINT_SOLUTION ? vo.PRINT_SOLUTION
																: ''));
										tr.insert(new Element('td')
												.update(vo.CREATE_ID));
										tr
												.insert(new Element('td')
														.update(DateUtils
																.toROC(vo.CREATE_DATE_TIME)
																+ vo.CREATE_DATE_TIME
																		.substring(
																				10,
																				19)));
										tr.vo = vo;
										$('TBODY_RESULT').insert(tr);
									});
						}
					}
				});
	}

	function doModify(reportId) {
		CSRUtil.ProcessPageCover();
		$('form1').action = '<%=request.getContextPath()%>/servlet/HttpDispatcher/AEC1_0100/promptWithKey';
	$('form1').insert(new Element('input', {type : 'hidden', name : 'KEY', value : reportId}));
	$('form1').submit();
}

</script>
<center><span id="bar1" style="position:absolute; left:0; top:0; width:100%; z-index:9; visibility: visible;">
<table width="100%" height="30" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td width="4" background="<%=request.getContextPath()%>/images/CM/border_01.gif"><img src="<%=request.getContextPath()%>/images/CM/border_01.gif" width="4" height="12"></td>
		<td valign="top" bgcolor="#F0FBC6">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" background="<%=request.getContextPath()%>/images/CM/border_03.gif">
			<tr>
				<td height="4"><img src="<%=request.getContextPath()%>/images/CM/border_03.gif" width="12" height="4"></td>
			</tr>
			
		</table>
		<table width="100%" border="0" cellpadding="2" cellspacing="0" class="subTitle">
			<tr>
				<td width="20" height="24">
				<div align="center"><font size="-5">●</font></div>
				</td>
				<td>統計報表</td>
				<td>
				<div align="right">畫面編號：AEC11000</div>
				</td>
			</tr>
			
		</table>
		</td>
		<td width="4" background="<%=request.getContextPath()%>/images/CM/border_02.gif"><img src="<%=request.getContextPath()%>/images/CM/border_02.gif" width="4" height="12"></td>
		<td width="5" class="tbBox"><img src="<%=request.getContextPath()%>/images/CM/ecblank.gif" width="5" height="1"></td>
	</tr>
</table>
</span>
<table width="100%" height="30" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td></td>
	</tr>
</table>
<table width="100%" height="100%" border="0" cellpadding="0" id="tbl2" cellspacing="0">
	<tr>
		<td width="4" background="<%=request.getContextPath()%>/images/CM/border_01.gif"><img src="<%=request.getContextPath()%>/images/CM/border_01.gif" width="4" height="12"></td>
		<td width="100%" valign="top" bgcolor="#F0FBC6">
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td valign="top">
				<table width=97% border=0 align=center cellpadding="0" id="tbl" cellspacing="1" bgcolor="#003366">
					<tr>
						<td class="tbBox2">
						<table width="100%" border="0" cellpadding="0" cellspacing="1">
							<tr>
								<td class="text10"><img src="<%=request.getContextPath()%>/images/CM/icon_dot11.gif" width="18" height="16">報表設定查詢</td>
								<jsp:include flush="true" page="../../../CM/CommonFunction.jsp"></jsp:include>
							</tr>
						</table>
						</td>
					</tr>
					<tr bgcolor=#FFFFFF>
						<td>
						<table width="100%" border="0" cellspacing="0" cellpadding="5">
							<tr>
								<td>
								<form id="form1" method="post"><%@ include file="/html/CM/operationDesc.jsp"%>
								<table width="100%" border="0" cellpadding="0" cellspacing="1" class="tbBox2">
									<tr>
										<td class="tbYellow" width="10%">報表ID</td>
										<td class="tbYellow2" width="23%"><input type="text" class="textBox2" id="REPORT_ID" maxlength="10" size="14"></td>
										<td class="tbYellow" width="10%">報表名稱</td>
										<td class="tbYellow2" width="23%"><input type="text" class="textBox2" id="REPORT_NAME" maxlength="30" size="35"></td>
										<td class="tbYellow" width="10%">元素說明</td>
										<td class="tbYellow2" width="24%"><input type="text" class="textBox2" id="REPORT_DESC" maxlength="30" size="35"></td>
									</tr>
									<tr>
										<td class="tbYellow">系統別</td>
										<td class="tbYellow2">
											<select id="SYSTEM_CODE" class="textBox2">
												<option value="">請選擇</option>
			                                	  <% for(Map<String, String> vo : listSYSTEM_CODE) {
			                                	  	out.print("<option value='" + vo.get("SYSTEM_CODE") + "'>" + vo.get("SYSTEM_CODE") + ":" + vo.get("SYSTEM_NAME") + "</option>");
			                                	  } %>
											</select>
										</td>
										<td class="tbYellow">報表類型</td>
										<td class="tbYellow2">
											<select id="REPORT_TYPE" class="textBox2 CLEAN">
												<option value="">請選擇</option>
												<option value="D">D:明細類</option>
												<option value="S">S:統計類</option>
											</select>
										</td>
										<td class="tbYellow">建立人員</td>
										<td class="tbYellow2"><input type="text" class="textBox2" id="CREATE_ID" maxlength="10" size="14" onblur="this.value = this.value.toUpperCase()"></td>
									</tr>
									<tr>
										<td class="tbYellow">SQL 命令</td>
										<td class="tbYellow2" colspan="5"><textarea class="textBox2" id="SQL_STRING" cols="150" rows="5"></textarea></td>
									</tr>
								</table>
								<input class="button enable" type="button" value="查詢" id="btnQuery" onclick="doQuery(this)">
								<input class="button enable" type="button" value="test" id="btnQuery2" onclick="dotest()">
								<table width="100%" border="0" cellpadding="0" cellspacing="1" class="tbBox2">
									<thead>
										<tr align="center" class="tbBlue">
											<td nowrap="nowrap">報表ID</td>
											<td nowrap="nowrap">系統別</td>
											<td nowrap="nowrap">報表名稱</td>
											<td nowrap="nowrap">報表說明</td>
											<td nowrap="nowrap">報表類型</td>
											<td nowrap="nowrap">DS 連線名稱</td>
											<td nowrap="nowrap">前置程序</td>
											<td nowrap="nowrap">後置程序</td>
											<td nowrap="nowrap">列印模式</td>
											<td nowrap="nowrap">建立人員</td>
											<td nowrap="nowrap">建立日期時間</td>
										</tr>
									</thead>
									<tbody id="TBODY_RESULT" class="CLEAN"></tbody>
								</table>
								</form>
								</td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
		</table>
		</td>
		<td width="4" background="<%=request.getContextPath()%>/images/CM/border_02.gif"><img src="<%=request.getContextPath()%>/images/CM/border_02.gif" width="4" height="12"></td>
		<td width="5" class="tbBox"><img src="<%=request.getContextPath()%>/images/CM/ecblank.gif" width="5" height="1"></td>
	</tr>
</table>
<table width="100%" height="30" border="0" cellpadding="0"  cellspacing="0">
	<tr>
		<td width="4" background="<%=request.getContextPath()%>/images/CM/border_01.gif"><img src="<%=request.getContextPath()%>/images/CM/border_01.gif" width="4" height="12"></td>
		<td valign="bottom" bgcolor="#F0FBC6">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" background=" <%=request.getContextPath()%>/images/CM/border_03.gif">
			<tr>
				<td height="4"><img src="<%=request.getContextPath()%>/images/CM/border_03.gif" width="12" height="4"></td>
			</tr>
		</table>
		</td>
		<td width="4" background="<%=request.getContextPath()%>/images/CM/border_02.gif"><img src="<%=request.getContextPath()%>/images/CM/border_02.gif" width="4" height="12"></td>
		<td width="5" class="tbBox"><img src="<%=request.getContextPath()%>/images/CM/ecblank.gif" width="5" height="1"></td>
	</tr>
</table>

</center>
<div id="dv1">
<textarea rows="4" cols="50">
At w3schools.com you will learn how to make a website. We offer free tutorials in all web development technologies. 
</textarea>
<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam …</p>
<p class='odd'>Phasellus dictum dignissim justo. Duis nec risus id nunc…</p>
<p>Sed vel leo. Nulla iaculis, tortor non laoreet dictum, turpis diam …</p>
<ul>
<li id="everywhere"  width="5" height="1"  class="tbBox">It can be found everywhere.</li>
<li class="test">It's easy to use.</li>
<!--
https://www.w3schools.com/bootstrap/default.asp-->
<li class="test">It can help you to find what you want,<a href="#">google.com.tw</a>really quickly.</li>
</ul>
<select name="sweets" multiple="multiple">
  <option>Chocolate</option>
  <option selected="selected">Candy</option>
  <option>Taffy</option>
  <option selected="selected">Caramel</option>
  <option>Fudge</option>
  <option>Cookie</option>
</select>
<div id="sdv1"></div>
<div id="fadein">Block of stuff to fade in…</div>
</div>
<%@ include file="/html/CM/msgDisplayer.jsp"%>
<iframe src="https://www.w3schools.com" id="iframe"  style="width:100%;height:350px;"></iframe>
<script>
//alert("586:enter");
var tr=document.getElementsByTagName("textarea")[0];

//alert(":");
document.getElementsByTagName("textarea")[0].onkeypress = function(e){
// If no event object exists, then grab the global (IE-only) one
e = e || window.event;
// If the Enter key is pressed, return false (causing it to do nothing)
//alert(":enter");
return e.keyCode != 13;



};
jQuery( "select" )
  .change(function () {
    var str = "";
    jQuery( "select option:selected" ).each(function() {
      str += jQuery( this ).text() + " ";
    });
    jQuery( "#sdv1" ).text( str );
  })
  .change();
  

  
</script>
</body>
</html>
