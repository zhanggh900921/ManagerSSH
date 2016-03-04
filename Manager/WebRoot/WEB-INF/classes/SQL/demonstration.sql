use manager;


insert into node set node_id=1,name='深圳节点1',enable=0,icnflow=5,idnflow=2,ianflow=4,isnflow=0,sum=11,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=2,name='深圳节点2',enable=0,icnflow=2,idnflow=1,ianflow=3,isnflow=0,sum=6,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=91,memory=38;
insert into node set node_id=3,name='深圳节点3',enable=0,icnflow=3,idnflow=0,ianflow=2,isnflow=0,sum=5,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=4,name='深圳节点4',enable=0,icnflow=4,idnflow=4,ianflow=5,isnflow=0,sum=13,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=5,name='深圳节点5',enable=0,icnflow=5,idnflow=5,ianflow=6,isnflow=0,sum=16,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=6,name='深圳节点6',enable=0,icnflow=6,idnflow=9,ianflow=9,isnflow=0,sum=24,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=7,name='边缘节点7',enable=0,icnflow=6,idnflow=9,ianflow=9,isnflow=0,sum=24,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;

insert into link set link_id=1,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=2,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=3,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=4,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=5,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=6,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=7,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=8,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=9,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;

insert into network set network_id=1,enable=0,flow=0,name='面向内容网络';
insert into network set network_id=2,enable=0,flow=0,name='面向身份网络';
insert into network set network_id=3,enable=0,flow=0,name='面向地址网络';
insert into network set network_id=4,enable=0,flow=0,name='面向服务网络';


insert into node_link set node_id=1,link_id=1;
insert into node_link set node_id=3,link_id=1;
insert into node_link set node_id=2,link_id=2;
insert into node_link set node_id=3,link_id=2;
insert into node_link set node_id=3,link_id=3;
insert into node_link set node_id=4,link_id=3;
insert into node_link set node_id=1,link_id=4;
insert into node_link set node_id=5,link_id=4;
insert into node_link set node_id=2,link_id=5;
insert into node_link set node_id=6,link_id=5;
insert into node_link set node_id=4,link_id=6;
insert into node_link set node_id=5,link_id=6;
insert into node_link set node_id=4,link_id=7;
insert into node_link set node_id=6,link_id=7;
insert into node_link set node_id=1,link_id=8;
insert into node_link set node_id=7,link_id=8;
insert into node_link set node_id=2,link_id=9;
insert into node_link set node_id=7,link_id=9;