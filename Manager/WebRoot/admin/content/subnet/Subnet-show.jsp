<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/topology/qunee-min.js"></script>
<script type="text/javascript" src="js/topology/drawLocation.js"></script>
<script language="javascript">
$(function(){	
	//导航切换
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
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">配置管理</a></li>
    <li><a href="#">网络拓扑</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><a href="Subnet-delete?subnet.id=<s:property value="subnet.id"/>"><span><img src="images/t03.png" /></span>删除</a></li>
        <li><span><img src="images/t04.png" /></span>统计</li>
        <li style="font-size: medium;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;<s:property value="subnet.name"/>信息与状态&nbsp;&nbsp;</li>      
        
        </ul>
        
        
        <ul class="toolbar1">
             <li><span><img src="images/t05.png" /></span><a href="Subnet-form?subnet.id=<s:property value="subnet.id"/>">重构拓扑</a></li>
        </ul>
    
    </div>
    
    
    <table class="imgtable">
    
    <thead>
    <tr>
    <th width="100px;" style="font-size: medium;">缩略图</th>
    <th style="font-size: medium;">节点ID</th>
    <th style="font-size: medium;">节点名称</th>
    <th style="font-size: medium;">流量统计</th>
    <th style="font-size: medium;">所属多态</th>
    <th style="font-size: medium;">所属逻辑网</th>

    </tr>
    </thead>
    
    <tbody>
    
    <s:iterator value="subnet.nodes" var="n" status="I">
    
    <tr>
    <td class="imgtd"><img src="images/topology/router.png" /></td>
     <td id=<s:property value="#I.index"/>><s:property value="#n.id"/></td>
    <td ><s:property value="#n.name"/></td>
    <td><s:property value="#n.sum"/><p>byte</p></td>
    <td>
    	<style>
		h{padding:0px; margin:0px;display: inline;}    /* 能够使<h>标签不换行 */
		</style>	
		
    	 <s:iterator value="#n.networks" var="nn" status="J">
	    	
	    	 	<h><s:property value="#nn.name"/>&nbsp</h>
	    	 
    	 </s:iterator>  
    </td>
    <td>
    	<s:iterator value="#n.subnets" var="ns" status="K">
    		
    		<s:if test="#ns.id==subnet.id">
	    		<h style="color:blue; " ><s:property value="#ns.name"/>&nbsp</h>
	    	</s:if>
	    	 <s:else>
	    	 	<h><s:property value="#ns.name"/>&nbsp</h>
	    	 </s:else>
    	 </s:iterator>
    </td>
   
    </tr>
    
    </s:iterator>
    
    
    </tbody>
    
    <!-- 显示链路 -->
     <thead>
    <tr>
    <th width="100px;" style="font-size: medium;">缩略图</th>
    <th style="font-size: medium;">链路ID</th>
    <th style="font-size: medium;">链路带宽</th>
    <th style="font-size: medium;">连接的节点</th>
    <th style="font-size: medium;">当前所属多态(蓝色表示当前多态)</th>
    <th style="font-size: medium;">当前所属逻辑网</th>
    

    </tr>
    </thead>
    <tbody>
    
    <s:iterator value="subnet.links" var="l" status="M">
    
    <tr>
    <td class="imgtd"><img src="images/topology/link.png" /></td>
    <td id=<s:property value="#M.index"/>_l><s:property value="#l.id"/></td>
    <td><s:property value="#l.bandwidth"/><p>M</p></td>
    <td>
		节点<h id=<s:property value="#M.index" />_0 "><s:property value="#l.nodes[0].id"/></h>
   	and	节点<h id=<s:property value="#M.index"/>_1  "><s:property value="#l.nodes[1].id"/></h>
	</td>
    <td>    
			
    	 <s:iterator value="#l.networks" var="ln" status="N">
	    	 
	    	 	<h><s:property value="#ln.name"/>&nbsp</h>

    	 </s:iterator>    	 
    </td>
     <td>
    	 <s:iterator value="#l.subnets" var="ls" status="K">

    		<s:if test="#ls.id==subnet.id">
	    		<h style="color: blue;" ><s:property value="#ls.name"/>&nbsp</h>
	    	</s:if>
	    	 <s:else>
	    	 	<h><s:property value="#ls.name"/>&nbsp</h>
	    	 </s:else>
    	 </s:iterator>
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
			
		   var nodeSize = '<s:property value="subnet.nodes.size"/>';
		   var linkSize = '<s:property value="subnet.links.size"/>';
		   
		   var myArray=new Array(20);
		   
			/*画图时一切以节点或者链路在数据库中的ID来话，标签只是用来读出ID  */

		   var graph = new Q.Graph("canvas");
		   for (var i=0;i<nodeSize;i++) {
		   		var node=document.getElementById(i).innerHTML;
		   		
		   		myArray[node] = graph.createNode("节点"+node, drawLocation(12,i,0), drawLocation(12,i,1));
		   } 
		   
		    	
   		   for (var m=0;m<linkSize;m++) {
   		  		
	   		  	var node0=document.getElementById(m+"_0").innerHTML;
   		  		var node1=document.getElementById(m+"_1").innerHTML;
   		  		
   		  		
   		  		var edge = graph.createEdge("", myArray[node0], myArray[node1]);  
   		  		var edge = graph.createEdge("", myArray[node1], myArray[node0]);
   		  		  
   		  } 
		   
   		
		  }
		 
    </script> 

    <div id="canvas" style="width: 1000px; height: 400px; margin: auto; border: solid 1px #2898E0;"></div>
    
   
   
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
    
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

