package com.yc.biz.impl;

import java.util.ArrayList;
import java.util.List;

import com.yc.biz.ITaoCanBiz;
import com.yc.dao.DBHelper;
import com.yc.po.TaoCanPO;
import com.yc.vo.TaocanVO;

public class TaoCanBizImpl implements ITaoCanBiz{
	DBHelper db = new DBHelper();
	@Override
	public TaoCanPO findByTid(int tid) {
		 List<Object> params =new ArrayList<Object>();
		 params.add(tid);
		 String sql="select *  from taoCan  where tid=?";
		 List<TaoCanPO>  list = db.find(sql, params, TaoCanPO.class);  //只有一条记录
		 if(null!=list&&list.size()>0){
			 return list.get(0);
		 }
		return null;
	}
	@Override
	public TaocanVO findByCid(int cid) {
		 List<Object> params =new ArrayList<Object>();
		 params.add(cid);
		 String sql ="select tyid,tname,intro,status,gid,gname,addr,tel,tid,des,price,act,to_char(sdate,'yyyy-MM-dd') sdate,to_char(edate,'yyyy-MM-dd') edate,tip,content,intr,total,pic,cid,tacontent,tades from view_taocan  where cid =?";
		 List<TaocanVO>  list = db.find(sql, params, TaocanVO.class);  //只有一条记录
		 if(null!=list&&list.size()>0){
			 return  list.get(0);
		 }
		return null;
	}

}
