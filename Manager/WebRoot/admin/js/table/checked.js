
addEvent(window,'load',function(){
	
							var fm = document.getElementsByName('myform')[0];

							
							var flowLimit = fm.elements['flowLimit'];
							var bankwidth = fm.elements['bankwidth'];
							
							addEvent(fm,'submit',function(evt){                          //�ύ��֤
														 
									for(var i=0;i<flowLimit.length;i++)		
										if(!checkNum(flowLimit[i].value)) {
										  document.getElementById('error').innerHTML = '\						    �����������������Ϣ���ڷǷ��ַ�����������ύ��';
										  preDef(evt);
										  }
									
									for(var i=0;i<bankwidth.length;i++)		
										if(!checkNum(bankwidth[i].value)) {
										  document.getElementById('error').innerHTML = '\						    ������Ĵ���������Ϣ���ڷǷ��ַ�����������ύ��';
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



