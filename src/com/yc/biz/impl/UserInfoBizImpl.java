package com.yc.biz.impl;

import java.util.ArrayList;
import java.util.List;

import com.yc.biz.IUserInnfoBiz;
import com.yc.dao.DBHelper;
import com.yc.po.UserInfoPO;

public class UserInfoBizImpl implements IUserInnfoBiz {
	DBHelper db = new DBHelper();
	@Override
	public List<UserInfoPO> findByTerm(Integer pageNo, Integer pageSzie,
			UserInfoPO po) {
		if(null==pageNo||null==pageSzie){
			String sql1="select email,uname,pwd,tel,province,city,area,to_char(udate,'yyyy-MM-dd') udate,money,point,status from  userinfo ";
			return db.find(sql1, null, UserInfoPO.class);
			
		}else{
			
			
		}
		
		return null;
	}

	@Override
	public boolean reg(UserInfoPO po) {
		String sql="insert into userinfo values(seq_usid.nextval,?,?,?,?,?,?,?,null,0,sysdate,0,1,null,null)";
		List<Object> params =new ArrayList<Object>();
		params.add(po.getEmail());
		params.add(po.getUname());
		params.add(po.getPwd());
		params.add(po.getTel());
		params.add(po.getProvince());
		params.add(po.getCity());
		params.add(po.getArea());
		int i =db.update(sql, params);
		if(i>0)
			return true;
		return false;
	}

	/**
	 * 根据用户名进行登录
	 */
	@Override
	public UserInfoPO login(UserInfoPO po) { 
		String sql1="select email,uname,pwd,tel,province,city,area,to_char(udate,'yyyy-MM-dd') udate,money,point,status from  userinfo where uname=? and pwd=?";
		List<Object> params =new ArrayList<Object>();
		params.add(po.getUname());
		params.add(po.getPwd());
		List<UserInfoPO> list =db.find(sql1, params, UserInfoPO.class);
		if(null!=list&&list.size()>0){
			return list.get(0);//将集合中第一条记录返回
		}
		return null;
	}
	 
	@Override
	public boolean updatePwd(UserInfoPO po) {
		// TODO Auto-generated method stub
		return false;
	}
 

}
