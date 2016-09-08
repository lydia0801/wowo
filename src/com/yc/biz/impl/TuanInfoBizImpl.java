package com.yc.biz.impl;

import java.util.ArrayList;
import java.util.List;

import com.yc.biz.ITuanInfoBiz;
import com.yc.dao.DBHelper;
import com.yc.vo.TuanInfoVO;

public class TuanInfoBizImpl implements ITuanInfoBiz {
	DBHelper db = new   DBHelper();
	
	//根据创建的视图查看信息，视图包含typeinfo  goodsinfo   tuaninfo
	@Override
	public List<TuanInfoVO> findByTrem(Integer pageNo, Integer pageSize,
			TuanInfoVO vo) {
		if(null==pageNo ||null==pageSize){//没有分页，查询所有
			String sql ="select tyid,tname,intro,status,gid,gname,addr,tel,tid,des,price,act,to_char(sdate,'yyyy-MM-dd') sdate,to_char(edate,'yyyy-MM-dd') edate,tip,content,intr,total,pic from view_tuaninfo";
			return db.find(sql, null, TuanInfoVO.class);
		}else{
		  return  null;
			
		}
	}

	@Override
	public TuanInfoVO findByTid(int tid) {
		String sql ="select tyid,tname,intro,status,gid,gname,addr,tel,tid,des,price,act,to_char(sdate,'yyyy-MM-dd') sdate,to_char(edate,'yyyy-MM-dd') edate,tip,content,intr,total,pic from view_tuaninfo  where tid =?";
		List<Object>  params = new ArrayList<Object>();
		params.add(tid);
		List<TuanInfoVO>  list =db.find(sql, params, TuanInfoVO.class);
		if(null!=list &&list.size()>0){
			return list.get(0);
		}
		return null;
	}

}
