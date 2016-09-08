package com.yc.biz;

import java.util.List;

import com.yc.vo.TuanInfoVO;

public interface ITuanInfoBiz {
	//查看所有
	public List<TuanInfoVO>  findByTrem(Integer pageNo,Integer pageSize,TuanInfoVO vo);
	
	//根据团购信息编号查看
	public   TuanInfoVO findByTid(int tid);
}
