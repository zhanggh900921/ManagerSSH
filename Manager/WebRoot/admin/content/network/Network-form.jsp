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
<script type="text/javascript" src="js/table/base.js"></script>    <!--库文件要在最前面被引用-->
<script type="text/javascript" src="js/table/checked.js"></script>
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
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
        <li style="font-size: large;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;<s:property value="network.name"/>拓扑重构&nbsp;&nbsp;</li>      
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span><a href="Network-show?network.id=<s:property value="network.id"/>">查看拓扑</a></li>
        </ul>
    
    </div>
   
    
    <form name="myform" action="Network-change" method="get">
    <input type="hidden" name="network.id" value='<s:property value="network.id"/>'/>
    <table class="imgtable">
    <!-- 显示节点 -->
    <thead>
    <tr>
    <th width="100px;" style="font-size: medium;">缩略图</th>
     <th style="font-size: medium;">节点ID</th>
    <th style="font-size: medium;">节点名称</th>
    <th style="font-size: medium;">流量上限配置</th>
    <th style="font-size: medium;">当前所属多态(蓝色表示当前多态)</th>
    <th style="font-size: medium;">当前所属逻辑网</th>
	 <th style="font-size: medium;">添加节点
	 	<input type="checkbox" name="check" onclick="checkAll('check');"/><a onclick="check.click()">全选</a>  
	 </th>
	 <th style="font-size: medium;">删除节点</th>
    </tr>
    </thead>
    
    
    <tbody>
    
    <s:iterator value="nodes" var="n" status="I">
    
    <tr>
    <td class="imgtd"><img src="images/topology/router.png" /></td>
    <td id=<s:property value="#I.index"/>><s:property value="#n.id"/></td>
    <td ><s:property value="#n.name"/></td>    <!-- 此处的ID为了画图设置的 -->
    <td>
           流量上限配置：<input type=text name="flowLimit" /> 	
  	<p>当前流量：
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
		h{padding:0px; margin:0px;display: inline;}    /* 能够使<h>标签不换行 */
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
	
   	<td style="color: red;"><input type="checkbox" name="addNodes" value="<s:property value="#n.id"/>" />  添加</td>
   	<td style="color: red;"><input type="checkbox" name="deleteNodes" value="<s:property value="#n.id"/>" />  删除</td>
    </tr>
    
    </s:iterator>
    
    
    </tbody>
    
    <!-- 显示链路 -->
     <thead>
    <tr>
    <th width="100px;" style="font-size: medium;">缩略图</th>
    <th style="font-size: medium;">链路ID</th>
    <th style="font-size: medium;">连接的节点</th>
    <th style="font-size: medium;">链路带宽配置</th>
    <th style="font-size: medium;">当前所属多态(蓝色表示当前多态)</th>
    <th style="font-size: medium;">当前所属逻辑网</th>
	 <th style="font-size: medium;">添加链路</th>
	 <th style="font-size: medium;">删除链路</th>
    </tr>
    </thead>
    
    <tbody>
    
    <s:iterator value="links" var="l" status="M">
    
    <tr>
    <td class="imgtd"><img src="images/topology/link.png" /></td>
    <td id=<s:property value="#M.index"/>_l><s:property value="#l.id"/></td>
     <td>
		节点<h id=<s:property value="#M.index" />_0 "><s:property value="#l.nodes[0].id"/></h>
   	and	节点<h id=<s:property value="#M.index"/>_1  "><s:property value="#l.nodes[1].id"/></h>
	</td>
    <td>
    	带宽配置：<input type=text name="bankwidth" />  
    	
    	<p>物理链路：<s:property value="#l.sum"/>M</p></td>
    	
   
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
	
   <td style="color: red;"><input type="checkbox" name="addLinks" value="<s:property value="#l.id"/>" />  添加</td>
   	<td style="color: red;"><input type="checkbox" name="deleteLinks" value="<s:property value="#l.id"/>" />  删除</td>
    </tr>
    
    </s:iterator>
    
    
    </tbody>
    
    </table>
    
    <input type="submit" value="提交" style="color: red; font-size: large;"/> <div id="error" style="color: red; font-size: medium;"></div>
    </form>
    
   <br />
   <hr align="center" width="1200px" color="grey" size="5" />
   <br />   
    
    <script type="text/javascript">		//全部选中checkBox
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
    	   
    	 var nodeNames =new Array("","/router/pku/n3","/router/pku/n1","/router/pku/n2","/router/main/n3","/router/main/n4","/router/main/n1",
    	 							"/router/main/n2","/router/hit/n1","/router/hit/n3","/router/hit/n2", "/router/sz/n0","/router/sz/n1",
    	 							"/router/sz/n6","/router/sz/n2","/router/sz/n3","/router/sz/n5","/router/sz/n4","/router/main/n5",
    	                            "/router/main/n6","/router/scut/n1"
		                         )		
		
   	   	 
    	   
    	   var nodeSize = '<s:property value="nodes.size"/>';
		   var linkSize = '<s:property value="links.size"/>';
		   var myNode=new Array(24);
		   var myLinks=new Array(24);
		   var newLinks=new Array(24);


		
		$(function(){
			
		 

		   var graph = new Q.Graph("canvas");
		    
		   for (var i=0;i<nodeSize;i++) {   //创建节点
		   		var node=document.getElementById(i).innerHTML;
		   		//alert(nodeNames[node]);
		   		myNode[node] = graph.createNode(nodeNames[node], drawLocation(nodeSize,node, 0), drawLocation(nodeSize, node, 1));
		   } 
		  
		   function createText(host, name, x, y, anchorPosition, w, h, fontSize, fontColor, backgroundColor){//文字框函数
			    var text = graph.createText(name, x, y);
			    text.setStyle(Q.Styles.LABEL_BORDER, 0.5);
			    text.setStyle(Q.Styles.LABEL_PADDING, 5);
			    text.setStyle(Q.Styles.LABEL_BORDER_STYLE, "#1D4876");
			    text.tooltipType = "text";
			    if(host){
			        text.host = text.parent = host;
			    }
			    if(anchorPosition){
			        text.anchorPosition = anchorPosition;
			        text.setStyle(Q.Styles.LABEL_ALIGN_POSITION, anchorPosition);
			    }
			    if(w && h){
			        text.setStyle(Q.Styles.LABEL_SIZE, new Q.Size(w, h));
			    }
			
			    text.setStyle(Q.Styles.LABEL_FONT_SIZE, fontSize || 14);
			    text.setStyle(Q.Styles.LABEL_COLOR, fontColor || "#555");
			    text.setStyle(Q.Styles.LABEL_BACKGROUND_COLOR, backgroundColor || "#FFF");
			
			    return text;
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
			
			function groupStyle(group){
				group.setStyle(Q.Styles.GROUP_BACKGROUND_COLOR, Q.toColor(0xCCfcfb9b));
				group.setStyle(Q.Styles.GROUP_BACKGROUND_GRADIENT, Q.Gradient.LINEAR_GRADIENT_HORIZONTAL);
				group.setStyle(Q.Styles.GROUP_STROKE, 2);
				group.setStyle(Q.Styles.GROUP_STROKE_STYLE, "#2898E0");
				group.setStyle(Q.Styles.GROUP_STROKE_LINE_DASH, [3,2]);
			}
		   
   		   for (var m=0;m<linkSize;m++) { //创建链路
   		  		
	   		  	var node0=document.getElementById(m+"_0").innerHTML;
   		  		var node1=document.getElementById(m+"_1").innerHTML;
   		  		
   		  		
   		  		var edge = graph.createEdge("", myNode[node0], myNode[node1]);  
   		  			edge.setStyle(Q.Styles.ARROW_TO_SIZE, 0);
   		  		    myLinks[m+1] = edge;	
   		  		 
   		   } 
   		   
   		   	var offset = 0;
			var index = 0;
			var timer = setInterval(function(){
				offset += -1;
				index++;
				index = index%20;
				for(var q=0; q<linkSize; q++)
					myLinks[q+1].setStyle(Q.Styles.ARROW_TO_OFFSET, -0.3 -0.035 * (20 - index));
			}, 150);
			
			var text1 = createText(null, "朱老师实验室", 200, -80, Q.Position.CENTER_TOP, 100, 30, 30, "#2eaae6");
			var group1 = graph.createGroup("G1");
			group1.addChild(myNode[1]);
			group1.addChild(myNode[2]);
			group1.addChild(myNode[3]);
			group1.addChild(text1);
			groupStyle(group1);	
			
			
			var text2 = createText(null, "北大节点AS1", 550, -30, Q.Position.CENTER_TOP, 100, 30, 30, "#2eaae6");
			var group2 = graph.createGroup("G2");
			group2.addChild(myNode[4]);
			group2.addChild(myNode[5]);
			group2.addChild(myNode[6]);
			group2.addChild(myNode[7]);
			group2.addChild(myNode[18]);
			group2.addChild(myNode[19]);
			group2.addChild(text2);
			groupStyle(group2);	
			
			var text3 = createText(null, "哈工大节点", -130, -300, Q.Position.CENTER_TOP, 100, 30, 30, "#2eaae6");
			var group3 = graph.createGroup("G3");
			group3.addChild(myNode[8]);
			group3.addChild(myNode[9]);
			group3.addChild(myNode[10]);
			group3.addChild(text3);
			groupStyle(group3);	
			
			var text4 = createText(null, "北大节点AS3", -250, 250, Q.Position.CENTER_TOP, 100, 30, 30, "#2eaae6");
			var group4 = graph.createGroup("G4");
			group4.addChild(myNode[11]);
			group4.addChild(myNode[13]);
			group4.addChild(myNode[14]);
			group4.addChild(text4);
			groupStyle(group4);	
			
			var text5 = createText(null, "北大节点AS2", 90, 80, Q.Position.CENTER_TOP, 100, 30, 30, "#2eaae6");
			var group5 = graph.createGroup("G5");
			group5.addChild(myNode[12]);
			group5.addChild(myNode[15]);
			group5.addChild(myNode[16]);
			group5.addChild(myNode[17]);
			group5.addChild(text5);
			groupStyle(group5);	
   		   

   		  	var text6 = createText(null, "华南理工节点", -550, 100, Q.Position.CENTER_TOP, 100, 30, 30, "#2eaae6");
			var group6 = graph.createGroup("G6");
			group6.addChild(myNode[20]);
			group6.addChild(text6);
			groupStyle(group6); 
 
   		
		  })
		 
    </script> 

    <div id="canvas" style="width: 1400px; height: 800px; margin: auto; border: solid 1px #2898E0;"></div>
    

   
    
<script type="text/javascript">
	$('.imgtable tbody tr:odd').addClass('odd');
	</script>
    
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

