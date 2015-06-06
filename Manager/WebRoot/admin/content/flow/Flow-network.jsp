<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
	<title>Charting</title>
	<link href="css/flow/basic.css" type="text/css" rel="stylesheet" />
	<script type="text/javascript" src="js/flow/_shared/EnhanceJS/enhance.js"></script>		
	<script type="text/javascript">
		// Run capabilities test
		enhance({
			loadScripts: [
				'js/flow/excanvas.js',
				'js/flow/_shared/jquery.min.js',
				'js/flow/visualize.jQuery.js',
				'js/flow/example-editable.js'
			],
			loadStyles: [
				'css/flow/visualize.css',
				'css/flow/visualize-light.css'
			]	
		});   
    </script>
    <style type="text/css">
    	table { float: left; margin: 140px 40px 0 0;  }
    	td input { border: 1px solid orange; background: yellow; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; position: absolute; padding: 8px 0; text-align: center; width: 60px; margin: -17px 0 0 4px; font-size: 1.4em; }
    	td.input { padding: 0; position: relative; }
    	.visualize { float: left; }
    </style>
</head>
<body>

<table >
	<caption style="font-size: 25px; color: red;">���ع������̬����ͳ��(��λbyte)</caption>
	<thead>
		<tr>
			<td></td>
			<th scope="col" style="font-size: large; ">����</th>
		</tr>
	</thead>
	<tbody>
		<s:iterator value="networks" var="n" status="I">
		<tr>
			<th scope="row"><a href="Flow-subnet?network.id=<s:property value="#n.id"/>" style="font-size: large; color: blue;"><s:property value="#n.name"/></a></th>
			<td style="font-size: large; "><s:property value="#n.flow"/></td>

		</tr>
		</s:iterator>	
	</tbody>
</table>	

</body>
</html>