<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>�ޱ����ĵ�</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/select.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.idTabs.min.js"></script>
<script type="text/javascript" src="js/select-ui.min.js"></script>
<script type="text/javascript" src="editor/kindeditor.js"></script>

<script type="text/javascript">
    KE.show({
        id : 'content7',
        cssPath : './index.css'
    });
  </script>
  
<script type="text/javascript">
$(document).ready(function(e) {
    $(".select1").uedSelect({
		width : 345			  
	});
	$(".select2").uedSelect({
		width : 167  
	});
	$(".select3").uedSelect({
		width : 100
	});
});
</script>
</head>

<body>

	<div class="place">
    <span>λ�ã�</span>
    <ul class="placeul">
    <li><a href="#">�Ʒѹ���</a></li>
    <li><a href="#">�Ʒѹ�������</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    
    <div id="usual1" class="usual"> 
    
    <div class="itab">
  	<ul> 
    <li><a href="#tab1" class="selected">���������趨</a></li> 
    <li><a href="#tab2">�Զ�������趨</a></li> 
  	</ul>
    </div> 
    
  	<div id="tab1" class="tabson">
    
    <div class="formtext">Hi��<b>admin</b>����ӭ����ʹ�ã�</div>
    
    <ul class="forminfo">
    <li><label>���������<b>*</b></label><input name="" type="text" class="dfinput"  style="width:518px;"/></li>
   
    <li><label>������̬<b>*</b></label>  
    

    <div class="vocation">
    <select class="select1">
    <option>������������</option>
    <option>������������</option>
    <option>�����ַ����</option>
    <option>�����������</option>

    </select>
    </div>
    
    </li>
    
    <li><label>��ʼ����(MB)<b>*</b></label>
    
    <div class="vocation">
    <select class="select1">
    <option>0--500</option>
    <option>0--800</option>
    <option>0--1000</option>
    <option>0--1500</option>
    </select>
    </div>
    
    
    
    </li>
    <li><label>��������<b>*</b></label>
    
    <div class="usercity">
    
    <div class="cityleft">
    <select class="select2">
    <option>5Ԫ</option>
    <option>10Ԫ</option>
    <option>15Ԫ</option>
    <option>20Ԫ</option>
    <option>25Ԫ</option>
    </select>
    </div>
    
    <div class="cityright">
    <select class="select2">
    <option>/GB</option>
    <option>/MB</option>
    <option>/KB</option>
    <option>/B</option>
    </select>
    </div>
    
    </div>
    
    
    
    </li>
    <li><label>˵������<b>*</b></label>
    

    <textarea id="content7" name="content" style="width:700px;height:250px;visibility:hidden;"></textarea>
    
    </li>
    <li><label>&nbsp;</label><input name="" type="button" class="btn" value="�ύ"/></li>
    </ul>
    
    </div> 
    
    
  	<div id="tab2" class="tabson">
    
    
    <ul class="seachform">
    
    <li><label>�ۺϲ�ѯ</label><input name="" type="text" class="scinput" /></li>
    <li><label>ָ��</label>  
    <div class="vocation">
    <select class="select3">
    <option>ȫ��</option>
    <option>����</option>
    </select>
    </div>
    </li>
    
    <li><label>�ص�ͻ�</label>  
    <div class="vocation">
    <select class="select3">
    <option>ȫ��</option>
    <option>����</option>
    </select>
    </div>
    </li>
    
    <li><label>�ͻ�״̬</label>  
    <div class="vocation">
    <select class="select3">
    <option>ȫ��</option>
    <option>����</option>
    </select>
    </div>
    </li>
    
    <li><label>&nbsp;</label><input name="" type="button" class="scbtn" value="��ѯ"/></li>
    
    </ul>
    
    
    <table class="tablelist">
    	<thead>
    	<tr>
        <th><input name="" type="checkbox" value="" checked="checked"/></th>
        <th>���<i class="sort"><img src="images/px.gif" /></i></th>
        <th>����</th>
        <th>�û�</th>
        <th>����</th>
        <th>����ʱ��</th>
        <th>�Ƿ����</th>
        <th>����</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <td><input name="" type="checkbox" value="" /></td>
        <td>20130908</td>
        <td>�������������Ʒ�</td>
        <td>admin</td>
        <td>�㶫����</td>
        <td>2015-09-09 15:05</td>
        <td>�����</td>
        <td><a href="#" class="tablelink">�鿴</a>     <a href="#" class="tablelink"> ɾ��</a></td>
        </tr> 
        
      
    
        </tbody>
    </table>
    
   
  
    
    </div>  
       
	</div> 
 
	<script type="text/javascript"> 
      $("#usual1 ul").idTabs(); 
    </script>
    
    <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
    
    
    
    
    
    </div>


<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>
