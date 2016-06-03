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
        <li class="click" id="nnn"></span><s:property value="subnet.nodes.size"/></li>
        <li class="click" id="lll"><s:property value="subnet.links.size"/></li>
        <li><a href="Subnet-delete?subnet.id=<s:property value="subnet.id"/>"><span><img src="images/t03.png" /></span>删除</a></li>
        <li><span><img src="images/t04.png" /></span>统计</li>
        <li style="font-size: medium;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;<s:property value="subnet.name"/>信息与状态&nbsp;&nbsp;</li>      
        
        </ul>
        
        
        <ul class="toolbar1">
        	<li><span><img src="images/t05.png" /></span><a href="Subnet-intelligentForm?subnet.id=<s:property value="subnet.id"/>">智能重构</a></li>
            <li><span><img src="images/t05.png" /></span><a href="Subnet-form?subnet.id=<s:property value="subnet.id"/>">手动重构</a></li>
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
    <td>
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
    <p>byte</p></td>
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
    <td>
    	<s:if test="network.id==1">
    		<s:property value="#l.icnBw"/>
    	</s:if>
    	<s:elseif test="network.id==2">
    		<s:property value="#l.idnBw"/>
    	</s:elseif>
    	<s:elseif test="network.id==3">
    		<s:property value="#l.ianBw"/>
    	</s:elseif>
    	<s:elseif test="network.id==4">
    		<s:property value="#l.isnBw"/>
    	</s:elseif>
    <p>M</p></td>
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
    	   
    	 var nodeNames =new Array("","/router/pku/n3","/router/pku/n1","/router/pku/n2","/router/main/n3","/router/main/n4","/router/main/n1",
    	 							"/router/main/n2","/router/hit/n1","/router/hit/n3","/router/hit/n2", "/router/sz/n0","/router/sz/n1",
    	 							"/router/sz/n6","/router/sz/n2","/router/sz/n3","/router/sz/n5","/router/sz/n4","/router/main/n5",
    	                            "/router/main/n6","/router/scut/n1"
		                         )		
		
   	   
    	   
    	   var nodeSize = document.getElementById("nnn").innerHTML;
		   var linkSize = document.getElementById("lll").innerHTML;
		   var myNode=new Array(24);
		   var myLinks=new Array(24);
		   var newLinks=new Array(24);


		
		$(function(){
			
		 

		   var graph = new Q.Graph("canvas");
		   for (var i=0;i<nodeSize;i++) {   //创建节点
		   		var node=document.getElementById(i).innerHTML;
		   		//alert(nodeNames[node]);
		   		myNode[node] = graph.createNode(nodeNames[node], drawLocation(20,node, 0), drawLocation(20, node, 1));
		   } 
		   
		

		   
		   	function createEdge(name, from, to, type, lineWidth, color){
				var edge = graph.createEdge(name, from, to);
				edge.setStyle(Q.Styles.EDGE_COLOR, color || "#000");
				edge.setStyle(Q.Styles.EDGE_WIDTH, lineWidth || 2);
				edge.edgeType = type || Q.Consts.EDGE_TYPE_DEFAULT;
				edge.setStyle(Q.Styles.EDGE_LINE_DASH, [2, 1]);
				edge.setStyle(Q.Styles.ARROW_TO_LINE_DASH, [2, 1]);
				edge.setStyle(Q.Styles.LABEL_OFFSET_Y, -10);
			    edge.setStyle(Q.Styles.LABEL_POSITION, Q.Position.CENTER_TOP);
			    edge.setStyle(Q.Styles.LABEL_ANCHOR_POSITION, Q.Position.CENTER_BOTTOM);
			    edge.setStyle(Q.Styles.LABEL_BORDER, 2);
			    edge.setStyle(Q.Styles.LABEL_POINTER, true);
			    edge.setStyle(Q.Styles.LABEL_PADDING, new Q.Insets(2, 5));
			    edge.setStyle(Q.Styles.LABEL_BACKGROUND_GRADIENT,
			            Q.Gradient.LINEAR_GRADIENT_VERTICAL);
			    
				return edge;
			}   
			
			
		   
   		   for (var m=0;m<linkSize;m++) { //创建链路
   		  		
	   		  	var node0=document.getElementById(m+"_0").innerHTML;
   		  		var node1=document.getElementById(m+"_1").innerHTML;
   		  		
   		  		
   		  		var edge = graph.createEdge("", myNode[node0], myNode[node1]);  
   		  			edge.setStyle(Q.Styles.ARROW_TO_SIZE, 0);
   		  		    myLinks[m+1] = edge;	
   		  		 
   		   } 
   		   
   		   
			
			
   		   

   		  
 
   		
		  })
		 
    </script>

    <div id="canvas" style="width: 1400px; height: 800px; margin: auto; border: solid 1px #2898E0;"></div>
    
   
   
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
    
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

