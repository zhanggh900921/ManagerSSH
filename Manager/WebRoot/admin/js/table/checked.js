
addEvent(window,'load',function(){
	
							var fm = document.getElementsByName('myform')[0];

							
							var flowLimit = fm.elements['flowLimit'];
							var bankwidth = fm.elements['bankwidth'];
							
							addEvent(fm,'submit',function(evt){                          //提交验证
														 
									for(var i=0;i<flowLimit.length;i++)		
										if(!checkNum(flowLimit[i].value)) {
										  document.getElementById('error').innerHTML = '\						    您输入的流量设置信息存在非法字符，请更正后提交！';
										  preDef(evt);
										  }
									
									for(var i=0;i<bankwidth.length;i++)		
										if(!checkNum(bankwidth[i].value)) {
										  document.getElementById('error').innerHTML = '\						    您输入的带宽设置信息存在非法字符，请更正后提交！';
										  preDef(evt);
										  }
									
									
								});	
		
			 });




function checkNum(ssn){
	var str = /^[\d]*$/ig;
	if(!str.test(ssn)) {
		return false;
	}

	return true;
}



