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
<script type="text/javascript" src="js/topology/demo.js"></script>

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
    <li><a href="#">物理网络</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
          <li style="font-size: large;border: medium;font-weight: bold;color: red;">&nbsp;&nbsp;&nbsp;可重构网络展示实验&nbsp;&nbsp;</li>
        </ul>
        

        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span><a href="content/demonstration/index.htm">流量</a></li>
        </ul>
    
    </div>
    
    
    <table class="imgtable" >
   
    <thead >
    <tr>
    <th width="100px;"style="font-size: medium;">缩略图</th>
    <th style="font-size: medium;">节点ID</th>
    <th style="font-size: medium;">节点名称</th>
    <th style="font-size: medium;">流量统计</th>
    <th style="font-size: medium;">所属多态</th>
    <th style="font-size: medium;">所属逻辑网</th>
    <th style="font-size: medium;">节点状态</th>
    <th style="font-size: medium;">节点操作</th>

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
			h{padding:0px; margin:0px;display: inline;}    /* 能够使<h>标签不换行 */
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
	    	<a  href="Topology-add?node.id=<s:property value="#n.id"/>" style="color: red">开启节点</a>
	    </s:if>
	    <s:else>
	    	<a  href="Topology-delete?node.id=<s:property value="#n.id"/>" style="color: red">关闭节点</a>
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
    	   
    	 var nodeNames =new Array("","深圳节点1","深圳节点2","深圳节点3","深圳节点4","深圳节点5","深圳节点6","深圳边缘节点"
    	                            ,"北京节点1","北京节点2","北京节点3","北京节点4","北京节点5","北京节点6","北京边缘节点"
		                            ,"郑州节点","长沙节点","上海节点"
		                         )		
		
		var linkMapping = new Array(
									{"id":1,"from":1,"to":3},
									{"id":2,"from":2,"to":3},
									{"id":3,"from":3,"to":4},
									{"id":4,"from":1,"to":5},
									{"id":5,"from":2,"to":6},
									{"id":6,"from":4,"to":5},
									{"id":7,"from":4,"to":6},
									{"id":8,"from":1,"to":7},
									{"id":9,"from":2,"to":7},
									{"id":10,"from":9,"to":11},
									{"id":11,"from":9,"to":10},
									{"id":12,"from":10,"to":14},
									{"id":13,"from":8,"to":14},
									{"id":14,"from":13,"to":14},
									{"id":15,"from":12,"to":13},
									{"id":16,"from":8,"to":12},
									{"id":17,"from":11,"to":12},
									{"id":18,"from":8,"to":9},
									{"id":19,"from":14,"to":15},
									{"id":20,"from":15,"to":17},
									{"id":21,"from":15,"to":16},
									{"id":22,"from":16,"to":17},
									{"id":23,"from":7,"to":16});
    	   
    	   
    	   var nodeSize = '<s:property value="nodes.size"/>';
		   var linkSize = '<s:property value="links.size"/>';
		   var myNode=new Array(24);
		   var myLinks=new Array(24);
		   var newLinks=new Array(24);
		   var myPath = new Array({"from":2,"to":3,"type":2,"id":2}); //初始化
		   
		   var path1 = new Array({"from":9,"to":8,"type":3,"id":18},
		                        {"from":8,"to":14,"type":3,"id":13},
		                        {"from":14,"to":15,"type":1,"id":19},
		                        {"from":15,"to":16,"type":1,"id":21},
		                        {"from":16,"to":7,"type":1,"id":23},
		                        {"from":7,"to":1,"type":2,"id":8},
		                        {"from":1,"to":5,"type":2,"id":4},
		                        {"from":5,"to":4,"type":2,"id":6},
		                        {"from":4,"to":6,"type":2,"id":7}
		                       );
		                  
		    var path2 = new Array({"from":9,"to":8,"type":3,"id":18},
		                        {"from":8,"to":14,"type":3,"id":13},
		                        {"from":14,"to":15,"type":1,"id":19},
		                        {"from":15,"to":16,"type":1,"id":21},
		                        {"from":16,"to":7,"type":1,"id":23},
		                        {"from":7,"to":2,"type":2,"id":9},
		                        {"from":2,"to":6,"type":2,"id":5}
		                       ); 

		
		$(function(){
			
		 

		   var graph = new Q.Graph("canvas");
		   for (var i=0;i<nodeSize;i++) {   //创建节点
		   		var node=document.getElementById(i).innerHTML;
		   		myNode[node] = graph.createNode(nodeNames[node], drawLocation(nodeSize,node, 0), drawLocation(nodeSize, node, 1));
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
   		   
   		   	var offset = 0;
			var index = 0;
			var timer = setInterval(function(){
				offset += -1;
				index++;
				index = index%20;
				for(var q=0; q<linkSize; q++)
					myLinks[q+1].setStyle(Q.Styles.ARROW_TO_OFFSET, -0.3 -0.035 * (20 - index));
			}, 150);
   		   
   		   function buildPath(path) {
				for(var i=0;i<myPath.length;i++){
					graph.graphModel.remove(myLinks[myPath[i].id]);
		  			var edge = graph.createEdge("", myNode[myPath[i].from], myNode[myPath[i].to]); 
					edge.setStyle(Q.Styles.ARROW_TO_SIZE, 0);					
		  			myLinks[myPath[i].id] = edge;
				}
				myPath = new Array(path.length);
				for(var i=0;i<path.length;i++){
					myPath[i] = path[i];
					if(path[i].type==1){
						graph.graphModel.remove(myLinks[path[i].id]);
						var edge1 = createEdge("地址数据传输", myNode[path[i].from], myNode[path[i].to], null, 4, "red");
						myLinks[path[i].id] = edge1;
					}
					else if(path[i].type==2){
						graph.graphModel.remove(myLinks[path[i].id]);
						var edge1 = createEdge("内容数据传输", myNode[path[i].from], myNode[path[i].to], null, 4, "green");
						myLinks[path[i].id] = edge1;
					}
					else if(path[i].type==3){
						graph.graphModel.remove(myLinks[path[i].id]);
						var edge1 = createEdge("身份数据传输", myNode[path[i].from], myNode[path[i].to], null, 4, "blue");
						myLinks[path[i].id] = edge1;
					}
					else if(path[i].type==4){
						graph.graphModel.remove(myLinks[path[i].id]);
						var edge1 = createEdge("服务数据传输", myNode[path[i].from], myNode[path[i].to], null, 4, "orange");
						myLinks[path[i].id] = edge1;
					}
					
				}
			}
   		 
    		  var flag=1;

    	   var timer2 = setInterval(function() {

				if(flag==1) {
					buildPath(path1);
					flag=2;
				}
				else if(flag==2) {
					buildPath(path2);
					flag=1;
				}

			}, 5000);   


	
			function destroy(){
				clearInterval(timer);
				clearInterval(timer2);
			}
   		  
 
   		
		  })
		 
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

