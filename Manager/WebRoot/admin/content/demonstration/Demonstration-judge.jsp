<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>

</head>


<body>
			<s:if test="network.enable==true">
	    		<%response.sendRedirect("content/demonstration/index.htm"); %>
	    	</s:if>
	    	 <s:else>
	    	 	<%response.sendRedirect("content/demonstration/index2.htm"); %>
	    	 </s:else>
	
</body>
</html>
