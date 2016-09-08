package com.yc.biz;

import com.yc.po.TaoCanPO;
import com.yc.vo.TaocanVO;

public interface ITaoCanBiz {
	/**
	 * 根据团购信息编号查看套餐信息  一个团购编号对应一个套餐系列
	 * @param tid
	 * @return
	 */
	public  TaoCanPO  findByTid(int tid);
	
	/**
	 * 根据套餐编号查看团购信息
	 * @param cid
	 * @return
	 */
	public  TaocanVO  findByCid(int cid);
}
