<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>input</title>

<link type="text/css" href="css/input.css" rel="stylesheet">
	
</head>

<body>
	<form action="Subnet-registerOK" method="post">
		<div class="title">
			<span class="title_name" style="color: white; ">�߼�������ע��</span>
		</div>
		
		<div class="center_container"></div>
		<div class="center">
			<div class="center_body">
				<p>
					<span class="sign"></span>
					<span class="font">���뷽��Ϣ</span>
				</p>
				<span class="line"></span>
				<input class="ui_reset" placeholder="���뷽��λ����" data-sign="company" maxlength="20" />
				<input class="ui_reset" placeholder="���뷽����" data-sign="email" maxlength="20" />
				<p>
					<span class="sign"></span>
					<span class="font">�����������Ϣ</span>
				</p>
				<span class="line"></span>
				<input class="ui_reset" placeholder="�������������" data-sign="subnet" maxlength="20" name="subnet.name"/>
				
				<div style="color: gray;font-size: medium;">
				�Ƿ����������<input name="isFlow" type="radio" value="1"  checked="checked"/>��<input name="isFlow" type="radio" value="0" />��
				
				
				
				<input class="ui_reset" placeholder="��������" data-sign="flowLimit" maxlength="20" name="subnet.flowLimit"/>
				
				
				
				��ѡ��������̬��
				<select name="subnet.network.id" >
					<s:iterator value="networks" var="n" status="I">
							<option value=<s:property value="#n.id"/> ><s:property value="#n.name"/></option>
					</s:iterator>
				</select>
				</div>
								
				
	
				
			</div>
			<div class="title">
				<input type="submit" class="btn" value="�ύ" />
			</div>
		</div>
	</form>
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/input.js"></script>
	
</body>
</html>