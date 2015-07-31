<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/topology/qunee-min.js"></script>
<script type="text/javascript" src="js/topology/drawLocation.js"></script>
<script type="text/javascript" src="js/table/base.js"></script>    <!--���ļ�Ҫ����ǰ�汻����-->
<script type="text/javascript" src="js/table/checked.js"></script>
<script language="javascript">
$(function(){	
	//�����л�
	$(".imglist li").click(function(){
		$(".imglist li.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>

</head>


<body>

	<div class="place">
    <span>λ�ã�</span>
    <ul class="placeul">
    <li><a href="#">��ҳ</a></li>
    <li><a href="#">���ù���</a></li>
    <li><a href="#">��������</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>����</li>
        <li class="click"><span><img src="images/t02.png" /></span>�޸�</li>
        <li><span><img src="images/t03.png" /></span>ɾ��</li>
        <li><span><img src="images/t04.png" /></span>ͳ��</li>
        <li style="font-size: large;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;<s:property value="network.name"/>�����ع�&nbsp;&nbsp;</li>      
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span><a href="Network-show?network.id=<s:property value="network.id"/>">�鿴����</a></li>
        </ul>
    
    </div>
   
    
    <form name="myform" action="Network-change" method="get">
    <input type="hidden" name="network.id" value='<s:property value="network.id"/>'/>
    <table class="imgtable">
    <!-- ��ʾ�ڵ� -->
    <thead>
    <tr>
    <th width="100px;" style="font-size: medium;">����ͼ</th>
     <th style="font-size: medium;">�ڵ�ID</th>
    <th style="font-size: medium;">�ڵ�����</th>
    <th style="font-size: medium;">������������</th>
    <th style="font-size: medium;">��ǰ������̬(��ɫ��ʾ��ǰ��̬)</th>
    <th style="font-size: medium;">��ǰ�����߼���</th>
	 <th style="font-size: medium;">���ӽڵ�
	 	<input type="checkbox" name="check" onclick="checkAll('check');"/><a onclick="check.click()">ȫѡ</a>  
	 </th>
	 <th style="font-size: medium;">ɾ���ڵ�</th>
    </tr>
    </thead>
    
    
    <tbody>
    
    <s:iterator value="nodes" var="n" status="I">
    
    <tr>
    <td class="imgtd"><img src="images/topology/router.png" /></td>
    <td id=<s:property value="#I.index"/>_n><s:property value="#n.id"/></td>
    <td ><s:property value="#n.name"/></td>    <!-- �˴���IDΪ�˻�ͼ���õ� -->
    <td>
           �����������ã�<input type=text name="flowLimit" /> 	
  	<p>��ǰ������
  		 <s:if test="network.id==1">
    		<s:property value="#n.icnFlow"/>
    	</s:if>
    	<s:elseif test="network.id==2">
    		<s:property value="#n.idnFlow"/>
    	</s:elseif>
    	<s:elseif test="network.id==3">
    		<s:property value="#n.ianFlow"/>
    	</s:elseif>
    	<s:elseif test="network.id==4">
    		<s:property value="#n.isnFlow"/>
    	</s:elseif>
    byte</p></td>
    <td>    
    	<style>
		h{padding:0px; margin:0px;display: inline;}    /* �ܹ�ʹ<h>��ǩ������ */
		</style>	
		
    	 <s:iterator value="#n.networks" var="nn" status="J">
	    	 <s:if test="#nn.id==network.id">
	    		<h style="color:blue; " ><s:property value="#nn.name"/>&nbsp</h>
	    	</s:if>
	    	 <s:else>
	    	 	<h><s:property value="#nn.name"/>&nbsp</h>
	    	 </s:else>
    	 </s:iterator>    	 
    </td>
    <td>
    	 <s:iterator value="#n.subnets" var="ns" status="K">
    		<s:property value="#ns.name"/>
    	 </s:iterator>
	</td>
	
   	<td style="color: red;"><input type="checkbox" name="addNodes" value="<s:property value="#n.id"/>" />  ����</td>
   	<td style="color: red;"><input type="checkbox" name="deleteNodes" value="<s:property value="#n.id"/>" />  ɾ��</td>
    </tr>
    
    </s:iterator>
    
    
    </tbody>
    
    <!-- ��ʾ��· -->
     <thead>
    <tr>
    <th width="100px;" style="font-size: medium;">����ͼ</th>
    <th style="font-size: medium;">��·ID</th>
    <th style="font-size: medium;">���ӵĽڵ�</th>
    <th style="font-size: medium;">��·��������</th>
    <th style="font-size: medium;">��ǰ������̬(��ɫ��ʾ��ǰ��̬)</th>
    <th style="font-size: medium;">��ǰ�����߼���</th>
	 <th style="font-size: medium;">������·</th>
	 <th style="font-size: medium;">ɾ����·</th>
    </tr>
    </thead>
    
    <tbody>
    
    <s:iterator value="links" var="l" status="M">
    
    <tr>
    <td class="imgtd"><img src="images/topology/link.png" /></td>
    <td id=<s:property value="#M.index"/>_l><s:property value="#l.id"/></td>
     <td>
		�ڵ�<h id=<s:property value="#M.index" />_0 "><s:property value="#l.nodes[0].id"/></h>
   	and	�ڵ�<h id=<s:property value="#M.index"/>_1  "><s:property value="#l.nodes[1].id"/></h>
	</td>
    <td>
    	�������ã�<input type=text name="bankwidth" />  
    	
    	<p>������·��<s:property value="#l.sum"/>M</p></td>
    	
   
    <td>    
			
    	 <s:iterator value="#l.networks" var="ln" status="N">
	    	 <s:if test="#ln.id==network.id">
	    		<h style="color: blue;" ><s:property value="#ln.name"/>&nbsp</h>
	    	</s:if>
	    	 <s:else>
	    	 	<h><s:property value="#ln.name"/>&nbsp</h>
	    	 </s:else>
    	 </s:iterator>    	 
    </td>
     <td>
    	 <s:iterator value="#l.subnets" var="ls" status="K">
    		<s:property value="#ls.name"/>
    	 </s:iterator>
	</td>
	
   <td style="color: red;"><input type="checkbox" name="addLinks" value="<s:property value="#l.id"/>" />  ����</td>
   	<td style="color: red;"><input type="checkbox" name="deleteLinks" value="<s:property value="#l.id"/>" />  ɾ��</td>
    </tr>
    
    </s:iterator>
    
    
    </tbody>
    
    </table>
    
    <input type="submit" value="�ύ" style="color: red; font-size: large;"/> <div id="error" style="color: red; font-size: medium;"></div>
    </form>
    
   <br />
   <hr align="center" width="1200px" color="grey" size="5" />
   <br />   
    
    <script type="text/javascript">		//ȫ��ѡ��checkBox
    	function checkAll() {  
  
		  var code_Values = document.getElementsByTagName("input");  
		  
		  for (i = 0; i < code_Values.length; i++) {  
		  
		    if (code_Values[i].name == "addNodes" ||code_Values[i].name == "addLinks") {  
		  
		      code_Values[i].checked = true;  
		  
		    }  
		  }  
		} 
    </script> 
    

    
    <script type="text/javascript">		 
		
		window.onload =	function(){
			
		   var nodeSize = '<s:property value="nodes.size"/>';
		   var linkSize = '<s:property value="links.size"/>';
		   var myArray=new Array(50);
		   


		   var graph = new Q.Graph("canvas");
		   for (var i=0;i<nodeSize;i++) {
		   		var node=document.getElementById(i+"_n").innerHTML;
		   		myArray[node] = graph.createNode("�ڵ�"+node, drawLocation(20,node,0), drawLocation(20,node,1));
		   } 
		     
		    	
   		   for (var m=0;m<linkSize;m++) {
   		  		
	   		  	var node0=document.getElementById(m+"_0").innerHTML;
   		  		var node1=document.getElementById(m+"_1").innerHTML;
   		  		var link=document.getElementById(m+"_l").innerHTML;
   		  		
   		  		var edge = graph.createEdge(link, myArray[node0], myArray[node1]);  
   		  		var edge = graph.createEdge("", myArray[node1], myArray[node0]);  
   		  } 
		    
		    
		    
   		
		  }
		 
    </script> 

    <div id="canvas" style="width: 1400px; height: 800px; margin: auto; border: solid 1px #2898E0;"></div>
    

   
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
    
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
