<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<title>成功啦</title>
		
		<style type="text/css">
			body{ margin:0; padding:0; background:#efefef; font-family:Georgia, Times, Verdana, Geneva, Arial, Helvetica, sans-serif; }
			div#mother{ margin:0 auto; width:943px; height:572px; position:relative; }
			div#errorBox{ background: url(images/404_bg1.png) no-repeat top left; width:943px; height:572px; margin:auto; }
			div#errorText{ color:#39351e; padding:146px 0 0 446px }
			div#errorText p{ width:303px; font-size:14px; line-height:26px; }
			div.link{ /*background:#f90;*/ height:50px; width:145px; float:left; }
			div#home{ margin:20px 0 0 444px;}
			div#contact{ margin:20px 0 0 25px;}
			h1{ font-size:40px; margin-bottom:15px; }
		</style>
		

		
	</head>
	<body>

		<div id="mother">
			<div id="errorBox">
				<div id="errorText">
				<style>
				h{padding:0px; margin:0px;display: inline;}    /* 能够使<h>标签不换行 */
				</style>
					<h1>恭喜啊！注册成功啦</h1>
					<p>
						逻辑网ID为：<h style="font-size: large;color: red;"><s:property value="subnet.id"/></h>
					</p>
					<p>
						逻辑网名称为：<h style="font-size: large;color: red;"><s:property value="subnet.name"/></h>
					</p>
					<p>
						流量上限为：<h style="font-size: large;color: red;"><s:property value="subnet.flowLimit"/>Byte</h>
					</p>
					<p>
						所属多态网络为：<h style="font-size: large;color: red;"><s:property value="network.name"/></h>
					</p>
				</div>
				<a href="Subnet-intelligentForm?subnet.id=<s:property value="subnet.id"/>" title="智能重构">
					<div class="link" id="home"></div>
				</a>
				<a href="Subnet-form?subnet.id=<s:property value="subnet.id"/>" title="手动重构">
					<div class="link" id="contact"></div>

				</a>
			</div>
		</div>
		<div style="text-align:center;">

</div>
	</body>
</html>