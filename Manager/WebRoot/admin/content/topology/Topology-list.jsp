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
          <li style="font-size: large;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;���ع���������״̬����Ϣ&nbsp;&nbsp;</li>
        </ul>
        

        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>����</li>
        </ul>
    
    </div>
    
    
    <table class="imgtable" >
   
    <thead >
    <tr>
    <th width="100px;"style="font-size: medium;">����ͼ</th>
    <th style="font-size: medium;">�ڵ�ID</th>
    <th style="font-size: medium;">�ڵ�����</th>
    <th style="font-size: medium;">����ͳ��</th>
    <th style="font-size: medium;">������̬</th>
    <th style="font-size: medium;">�����߼���</th>
    <th style="font-size: medium;">�ڵ�״̬</th>
    <th style="font-size: medium;">�ڵ����</th>

    </tr>
    </thead>
    
    <tbody>
    
    <s:iterator value="nodes" var="n" status="I">
    
    <tr >
    <td class="imgtd"><img src="images/topology/router.png" /></td>
    <td id=<s:property value="#I.index"/>><s:property value="#n.id"/></td>
    <td ><s:property value="#n.name"/></td>
    <td><s:property value="#n.sum"/><p>byte</p></td>
    <td>
    	<style>
			h{padding:0px; margin:0px;display: inline;}    /* �ܹ�ʹ<h>��ǩ������ */
		</style>	
		
    	 <s:iterator value="#n.networks" var="nn" status="J">	    	
	    	 <h><s:property value="#nn.name"/>&nbsp</h>
    	 </s:iterator>  
    </td>
    <td>
    	<s:iterator value="#n.subnets" var="ns" status="K">
    		<s:property value="#ns.name"/>
    	 </s:iterator>
    </td>
    <td>
    	<s:property value="#n.enable"/>
    </td>
    <td>
		<s:if test="#n.enable==false">
	    	<a  href="Topology-add?node.id=<s:property value="#n.id"/>" style="color: red">�����ڵ�</a>
	    </s:if>
	    <s:else>
	    	<a  href="Topology-delete?node.id=<s:property value="#n.id"/>" style="color: red">�رսڵ�</a>
	    </s:else>
	</td>
   
    </tr>
    
    </s:iterator>
    
    
    </tbody>
    
    </table>
    
   <br />
   <hr align="center" width="1200px" color="grey" size="5" />
   <br />   
    
    
    
    <script type="text/javascript">		 
		
		window.onload =	function(){
			
		   var nodeSize = '<s:property value="nodes.size"/>';
		   var linkSize = '<s:property value="links.size"/>';
		   var myArray=new Array(50);
		   
			

		   var graph = new Q.Graph("canvas");
		   for (var i=0;i<nodeSize;i++) {
		   		var node=document.getElementById(i).innerHTML;
		   		myArray[node] = graph.createNode("�ڵ�"+node, drawLocation(20,node,0), drawLocation(20,node,1));
		   		 
		   } 
		   
		      
		    	
   		   for (var m=0;m<linkSize;m++) {
   		  		
	   		  	var node0=document.getElementById(m+"_0").innerHTML;
   		  		var node1=document.getElementById(m+"_1").innerHTML;
   		  		
   		  		var edge = graph.createEdge("", myArray[node0], myArray[node1]);  
   		  		var edge = graph.createEdge("", myArray[node1], myArray[node0]);  
   		  } 
   		  
		    
   		
		  }
		 
    </script> 

    <div id="canvas" style="width: 1400px; height: 800px; margin: auto; border: solid 1px #2898E0;"></div>
    
   <s:iterator value="links" var="l" status="J">
   				 			
   			<div id=<s:property value="#J.index" />_0 style="color: white;width:1px;height:1px;float:left;"><s:property value="#l.nodes[0].id"/></div>
   			<div id=<s:property value="#J.index"/>_1  style="color: white;width:1px;height:1px;float:left;"><s:property value="#l.nodes[1].id"/></div>
   		
   	</s:iterator>
   
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
    
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
