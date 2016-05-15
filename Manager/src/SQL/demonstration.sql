use manager;


insert into node set node_id=1,name='/router/pku/n3',enable=0,icnflow=500,idnflow=200,ianflow=400,isnflow=0,sum=1630,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=2,name='/router/pku/n1',enable=0,icnflow=200,idnflow=100,ianflow=300,isnflow=0,sum=6600,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=3,name='/router/pku/n2',enable=0,icnflow=300,idnflow=0,ianflow=200,isnflow=0,sum=3500,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;

insert into node set node_id=4,name='/router/main/n3',enable=0,icnflow=400,idnflow=400,ianflow=500,isnflow=0,sum=2370,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=5,name='/router/main/n4',enable=0,icnflow=500,idnflow=500,ianflow=600,isnflow=0,sum=5609,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=6,name='/router/main/n1',enable=0,icnflow=600,idnflow=900,ianflow=900,isnflow=0,sum=7494,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=7,name='/router/main/n2',enable=0,icnflow=600,idnflow=900,ianflow=900,isnflow=0,sum=2463,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=18,name='/router/main/n5',enable=0,icnflow=600,idnflow=900,ianflow=900,isnflow=0,sum=7494,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=19,name='/router/main/n6',enable=0,icnflow=600,idnflow=900,ianflow=900,isnflow=0,sum=2463,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;

insert into node set node_id=8,name='/router/hit/n1',enable=0,icnflow=500,idnflow=200,ianflow=400,isnflow=0,sum=3574,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=9,name='/router/hit/n3',enable=0,icnflow=200,idnflow=100,ianflow=300,isnflow=0,sum=6870,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=91,memory=38;
insert into node set node_id=10,name='/router/hit/n2',enable=0,icnflow=300,idnflow=0,ianflow=200,isnflow=0,sum=5900,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;

insert into node set node_id=11,name='/router/sz/n0',enable=0,icnflow=400,idnflow=400,ianflow=500,isnflow=0,sum=8741,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=12,name='/router/sz/n1',enable=0,icnflow=500,idnflow=500,ianflow=600,isnflow=0,sum=6439,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=13,name='/router/sz/n6',enable=0,icnflow=600,idnflow=900,ianflow=900,isnflow=0,sum=8954,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=14,name='/router/sz/n2',enable=0,icnflow=600,idnflow=900,ianflow=900,isnflow=0,sum=8898,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=15,name='/router/sz/n3',enable=0,icnflow=500,idnflow=200,ianflow=400,isnflow=0,sum=11008,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=16,name='/router/sz/n5',enable=0,icnflow=200,idnflow=100,ianflow=300,isnflow=0,sum=9688,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;
insert into node set node_id=17,name='/router/sz/n4',enable=0,icnflow=300,idnflow=0,ianflow=200,isnflow=0,sum=9908,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;

insert into node set node_id=20,name='/router/scut/n1',enable=0,icnflow=300,idnflow=0,ianflow=200,isnflow=0,sum=9908,icnFlowLimit=1000,idnFlowLimit=1000,isnFlowLimit=1000,ianFlowLimit=1000,cpu=50,memory=38;

insert into link set link_id=1,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=2,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=3,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=4,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=5,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=6,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=7,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=8,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=9,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;

insert into link set link_id=10,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=11,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=12,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=13,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=14,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=15,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=16,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=17,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=18,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;

insert into link set link_id=19,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=20,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=21,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=22,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=23,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;

insert into link set link_id=24,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=25,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=26,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=27,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=28,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=29,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;
insert into link set link_id=30,icnBw=50,idnBw=30,ianBw=20,isnBw=10,sum=100,delay=0;

insert into network set network_id=1,enable=0,flow=0,name='面向内容网络';
insert into network set network_id=2,enable=0,flow=0,name='面向身份网络';
insert into network set network_id=3,enable=0,flow=0,name='面向地址网络';
insert into network set network_id=4,enable=0,flow=0,name='面向服务网络';
insert into node_link set node_id=1,link_id=1;
insert into node_link set node_id=3,link_id=1;
insert into node_link set node_id=2,link_id=2;
insert into node_link set node_id=1,link_id=2;
insert into node_link set node_id=3,link_id=3;
insert into node_link set node_id=2,link_id=3;
insert into node_link set node_id=3,link_id=4;
insert into node_link set node_id=8,link_id=4;
insert into node_link set node_id=8,link_id=5;
insert into node_link set node_id=10,link_id=5;
insert into node_link set node_id=8,link_id=6;
insert into node_link set node_id=9,link_id=6;
insert into node_link set node_id=9,link_id=7;
insert into node_link set node_id=10,link_id=7;
insert into node_link set node_id=10,link_id=8;
insert into node_link set node_id=14,link_id=8;
insert into node_link set node_id=3,link_id=9;
insert into node_link set node_id=11,link_id=9;

insert into node_link set node_id=2,link_id=10;
insert into node_link set node_id=7,link_id=10;
insert into node_link set node_id=6,link_id=11;
insert into node_link set node_id=7,link_id=11;
insert into node_link set node_id=6,link_id=12;
insert into node_link set node_id=18,link_id=12;
insert into node_link set node_id=18,link_id=13;
insert into node_link set node_id=5,link_id=13;
insert into node_link set node_id=18,link_id=14;
insert into node_link set node_id=19,link_id=14;
insert into node_link set node_id=19,link_id=15;
insert into node_link set node_id=5,link_id=15;
insert into node_link set node_id=5,link_id=16;
insert into node_link set node_id=7,link_id=16;
insert into node_link set node_id=11,link_id=17;
insert into node_link set node_id=7,link_id=17;
insert into node_link set node_id=11,link_id=18;
insert into node_link set node_id=12,link_id=18;

insert into node_link set node_id=14,link_id=19;
insert into node_link set node_id=11,link_id=19;
insert into node_link set node_id=15,link_id=20;
insert into node_link set node_id=14,link_id=20;
insert into node_link set node_id=12,link_id=21;
insert into node_link set node_id=16,link_id=21;
insert into node_link set node_id=15,link_id=22;
insert into node_link set node_id=17,link_id=22;
insert into node_link set node_id=14,link_id=23;
insert into node_link set node_id=13,link_id=23;


insert into node_link set node_id=19,link_id=24;
insert into node_link set node_id=16,link_id=24;

insert into node_link set node_id=16,link_id=25;
insert into node_link set node_id=17,link_id=25;
insert into node_link set node_id=13,link_id=26;
insert into node_link set node_id=17,link_id=26;
insert into node_link set node_id=15,link_id=27;
insert into node_link set node_id=12,link_id=27;
insert into node_link set node_id=4,link_id=28;
insert into node_link set node_id=5,link_id=28;
insert into node_link set node_id=7,link_id=29;
insert into node_link set node_id=19,link_id=29;

insert into node_link set node_id=11,link_id=30;
insert into node_link set node_id=20,link_id=30;








