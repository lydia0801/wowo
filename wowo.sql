drop table userInfo;

--会员信息表
create table userInfo(
	usid int primary key, --会员编号
	email varchar2(100) unique, --邮箱
	uname varchar2(100), --会员名
	pwd varchar2(100), --密码
	tel varchar2(15), --联系方式
	province varchar2(40), --省份
	city varchar2(50), --城市
	area varchar2(50), --地区
	photo clob,  --用户图像地址
	money number(10,2),  --余额
	udate date,  --注册时间
	point int,  --积分
	status int, --状态(0.未激活  1.正常帐号  2.   3.)
	temp varchar2(200),  --备用字段
	flag varchar2(1000)  --备用字段
);

insert into userInfo_wowo values(seq_usid.nextval,?,?,?,?,?,?,?,null,0,sysdate,0,1,null,null);
create sequence seq_usid start with 10001 increment by 1;
select email,uname,pwd,tel,province,city,area,to_char(udate,'yyyy-MM-dd') udate,money,point,status from  userinfo where uname=? and pwd=?";


select * from userinfo;		
--帐号异常记录
create table accountInfo(
	aid int primary key, --编号
	usid int
		constraint FK_userInfo_accountInfo_usid references userInfo(usid),
	adate date,  --异常时间
	edate date,  --结束时间
	content varchar2(2000), --提示信息
	status int, --状态
	temp varchar2(200),  --备用字段
	flag varchar2(1000)  --备用字段
);
create sequence seq_aid start with 10001 increment by 1;

--管理员信息表
create table adminInfo(
	aid int primary key, --编号
	aname varchar2(100), --名字
	pwd varchar2(20), --密码
	status int --状态
);

drop table adminInfo
select  *  from adminInfo ;
create sequence seq_afid start with 10001 increment by 1;

insert into adminInfo values(seq_afid.nextval,'lydia','1234',1);
insert into adminInfo values(seq_afid.nextval,'navy','1234',1);

insert into adminInfo values(seq_afid.nextval,'yc','1234',1);
insert into adminInfo values(seq_afid.nextval,'b','1234',1);

--团购类型
create table typeInfo(
	tid int primary key,  --编号
	tname varchar2(40), --名称
	intro varchar2(200),  --介绍
	status int --状态
);
create sequence seq_tid start with 10001 increment by 1;

insert into typeInfo values(seq_tid.nextval,'美食','窝窝团',1);
insert into typeInfo values(seq_tid.nextval,'娱乐','窝窝团',1);
insert into typeInfo values(seq_tid.nextval,'电影','窝窝团',1);
insert into typeInfo values(seq_tid.nextval,'美容保健','窝窝团',1);
insert into typeInfo values(seq_tid.nextval,'生活服务','窝窝团',1);
insert into typeInfo values(seq_tid.nextval,'结婚','窝窝团',1);
insert into typeInfo values(seq_tid.nextval,'旅行','窝窝团',1);
insert into typeInfo values(seq_tid.nextval,'酒店','窝窝团',1);
insert into typeInfo values(seq_tid.nextval,'网购','窝窝团',1); 
insert into typeInfo values(seq_tid.nextval,'品牌汇','窝窝团',1); 
commit;

select gid,gname,adder,tel,falg,tname as temp from tyepInfo t,goodsInfo g where t.tid=g.tid

select * from typeInfo;
 -- 商品信息
create table goodsInfo(
	gid int primary key,  --商品编号
	gname varchar2(200),  --商品名称
	tid int
		constraint FK_typeInfo_goodsInfo_tid references typeInfo(tid),
	addr varchar2(200), -- 店铺地址
	tel varchar2(20), -- 联系方式
	temp varchar2(200),  --备用字段
	flag varchar2(1000)  --备用字段	
);
create sequence seq_gid start with 10001 increment by 1;
insert into goodsInfo values(seq_gid.nextval,'巴西烤肉',10001,'蒸湘区解放路1号 ','15000998899',null,null);
insert into goodsInfo values(seq_gid.nextval,'韩国烤肉',10001,'蒸湘区解放路2号','15000998899',null,null);
insert into goodsInfo values(seq_gid.nextval,'足浴',10004,'蒸湘区解放路3号','15000998899',null,null);
insert into goodsInfo values(seq_gid.nextval,'金榜KTV',10002,'珠晖区衡花路湖南工学院南门  ','15000998899',null,null);
insert into goodsInfo values(seq_gid.nextval,'大成酒店',10008,'蒸湘区解放路4号','15000998899',null,null);
insert into goodsInfo values(seq_gid.nextval,'七天酒店',10008,'蒸湘区解放路5号 ','15000998899',null,null);
insert into goodsInfo values(seq_gid.nextval,'日本寿司',10001,'蒸湘区解放路6号 ','15000998899',null,null);
insert into goodsInfo values(seq_gid.nextval,'重庆烤鱼',10001,'珠晖区衡花路湖南工学院南门 ','15000998899',null,null);
commit;
select * from goodsInfo;
--添加一个新列
--alter table goodsInfo add tid int;
--给新列添加一个外检约束
--alter table goodsInfo add constraint FK_typeInfo_goodsInfo_tid foreign key(tid) references typeInfo(tid); [on delete cascade|on delete set null]


--团购信息
create table tuanInfo(
	tid int primary key, --团购信息编号
	gid int
		constraint FK_goodsInfo_tuanInfo_gid references goodsInfo(gid),
	des varchar2(1000),  --商品描述
	price number(10,2), --原价
	act number(10,2), --折扣价
	sdate date, --活动开始时间
	edate date, --活动结束时间
	tip clob, --温馨提示
	content varchar2(2000), --特别提醒
	intr clob, --商品介绍
	total int, --点击次数
	pic varchar2(2000), --商品图片
	temp varchar2(200),  --备用字段
	flag varchar2(1000)  --备用字段
);
commit;

create sequence seq_tsid start with 10001 increment by 1;
insert into tuanInfo values(seq_tsid.nextval,10002,'仅39.9元，享价值49元韩国自助烤肉单人自助午/晚餐2选1！提供免费WiFi！',49,39.9,to_date('2015-10-10','yyyy-MM-dd'),to_date('2016-10-10','yyyy-MM-dd'),'本商品不限购买','请提前2小时致电预约  13973164878','以上图片仅供参考，请以商家实际提供为准',0,'upload/1.jpg',null,null);
insert into tuanInfo values(seq_tsid.nextval,10002,'仅89.9元，享价值99元韩国自助烤肉双人自助午/晚餐2选1！提供免费WiFi！',99,89.9,to_date('2015-10-10','yyyy-MM-dd'),to_date('2016-10-10','yyyy-MM-dd'),'本商品不限购买','请提前2小时致电预约  13973164878','以上图片仅供参考，请以商家实际提供为准',0,'upload/1.jpg',null,null);
insert into tuanInfo values(seq_tsid.nextval,10002,'仅139.9元，享价值149元韩国自助烤肉三人自助午/晚餐2选1！提供免费WiFi！',149,139.9,to_date('2015-10-10','yyyy-MM-dd'),to_date('2016-10-10','yyyy-MM-dd'),'本商品不限购买','请提前2小时致电预约  13973164878','以上图片仅供参考，请以商家实际提供为准',0,'upload/1.jpg',null,null);
insert into tuanInfo values(seq_tsid.nextval,10002,'仅179.9元，享价值199元韩国自助烤肉四人自助午/晚餐2选1！提供免费WiFi！',199,179.9,to_date('2015-10-10','yyyy-MM-dd'),to_date('2016-10-10','yyyy-MM-dd'),'本商品不限购买','请提前2小时致电预约  13973164878','以上图片仅供参考，请以商家实际提供为准',0,'upload/1.jpg',null,null);
insert into tuanInfo values(seq_tsid.nextval,10002,'仅239.9元，享价值249元韩国自助烤肉五人自助午/晚餐2选1！提供免费WiFi！',49,239.9,to_date('2015-10-10','yyyy-MM-dd'),to_date('2016-10-10','yyyy-MM-dd'),'本商品不限购买','请提前2小时致电预约  13973164878','以上图片仅供参考，请以商家实际提供为准',0,'upload/1.jpg',null,null);


select * from tuaninfo;
--套餐内容
create table taoCan(
	cid int primary key,
	tid int
		constraint FK_tuanInfo_taoCan_tid references tuanInfo(tid),
	content varchar2(400), --套餐内容
	des varchar2(100) --数量/规格
);
commit;

create sequence seq_cid start with 10001 increment by 1;
insert into taoCan values(seq_cid.nextval,10001,'单人套餐','一人使用');
insert into taoCan values(seq_cid.nextval,10002,'双人套餐','二人使用');
insert into taoCan values(seq_cid.nextval,10003,'三人套餐','三人使用');
insert into taoCan values(seq_cid.nextval,10004,'四人套餐','四人使用');
insert into taoCan values(seq_cid.nextval,10005,'五人套餐','五人使用');
select * from taocan;

--订单表
create table orderInfo(
	oid int primary key,   --标示
	orderNo  varchar2(50),  --订单编号    时间+001
	cid int
		constraint FK_taoCan_orderInfo_cid references taoCan(cid),
	wprice number(10,2), --购买价
	nums int --购买数量
);
--drop table orderInfo ;
select * from orderInfo

create sequence seq_oid start with 10001 increment by 1;


select * from (select a.*,rownum rn from (select usid,email,uname,pwd,tel,province,city,area,photo,money,udate,point,status,temp,flag from userInfo order by usid)a where rownum<=10) b where rn>5


update userInfo set photo=nvl(photo,''))


select tf.*,gname from tuanInfo tf,goodsInfo gf where tf.gid=gf.gid;

select * from adminInfo;

select * from goodsInfo;

update goodsInfo set addr='湖南衡阳' 



select tf.*,gf.gname from tuanInfo tf,goodsInfo gf where gf.tid=tf.tid order by gid



select gf.*,tname from goodsInfo gf,typeInfo tf where gf.tid=tf.tid order by gid

commit;

create view view_tuaninfo  as select t.tid  tyid,t.tname,t.intro,t.status,g.gid,g.gname,
g.addr,g.tel,tt.tid,tt.des,tt.price,tt.act,tt.sdate,tt.edate,
tt.tip,tt.content,tt.intr,tt.total,tt.pic  from  typeInfo  t  inner join  goodsinfo g  on  t.tid =g.tid  inner join tuaninfo
tt on tt.gid =g.gid;

select * from view_tuaninfo;

 --无订单信息 
create view view_taocan  as  select t.tid  tyid,t.tname,t.intro,t.status,g.gid,g.gname,
g.addr,g.tel,tt.tid,tt.des,tt.price,tt.act,tt.sdate,tt.edate,
tt.tip,tt.content,tt.intr,tt.total,tt.pic,ta.cid,ta.content  tacontent ,ta.des tades  from  typeInfo  t  inner join  goodsinfo g  on  t.tid =g.tid  inner join tuaninfo
tt on tt.gid =g.gid  inner join taocan ta on ta.tid =tt.tid 