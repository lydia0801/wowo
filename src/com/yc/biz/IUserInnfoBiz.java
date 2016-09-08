package com.yc.biz;

import java.util.List;

import com.yc.po.UserInfoPO;

public interface IUserInnfoBiz {
	//查看用户信息
	public List<UserInfoPO>  findByTerm(Integer pageNo ,Integer pageSzie,UserInfoPO po);
	
	//用户注册
	public boolean reg(UserInfoPO po);
	
	//用户登录
	public UserInfoPO login(UserInfoPO po);
	
	//修改密码
	public  boolean updatePwd(UserInfoPO po);
	
	 
}
