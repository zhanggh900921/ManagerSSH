<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>

<script language="javascript">
$(function(){	
	//�����л�
	$(".disklist li").click(function(){
		$(".disklist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>

</head>


<body>
	
	<div class="place">
    <span>λ�ã�</span>
    <ul class="placeul">
    <li><a href="#">��ҳ</a></li>
    <li><a href="#">���ù���</a></li>
    <li><a href="#">�߼������</a></li>
    </ul>
    </div>
    
    <div class="comtitle">
    <span><img src="images/clist.png" /></span>
    <h2>�߼������(4)</h2>
    <div class="rline"></div>
    </div>
    
    
    <ul class="disklist">
    
    <s:iterator value="networks" var="n" status="I">
    <li>
    <a href="Subnet-list?network.id=<s:property value="#n.id"/>">
    <div class="dleft1"></div>    
    <div class="dright">
    <h2><s:property value="#n.name"/></h2>
    <div class="dinfo"><span style="width:100px;"></span></div>
    <p>��<s:property value="#n.subnets.size"/> ���߼���</p>    
    </div>
    </a>
    </li>
    </s:iterator>
    
    </ul>
    
    
    
    <div class="comtitle">
    <span><img src="images/clist.png" /></span>
    <h2>ע���߼���</h2>
    <div class="rline"></div>
    </div>
    
    
    <ul class="disklist">
    <a href="Subnet-register">
    <li>
    <div class="dleft2"></div>    
    <div class="dright">
    <h3>���ע��</h3>
    <p>�ļ���</p>    
    </div>
    </li>
    </a>
    
    </ul>
    
    
   

<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
