package com.yc.biz;

import java.util.List;

import com.yc.po.OrderInfoPO;

public interface IOrderInfoBiz {

	public boolean addOrder(OrderInfoPO po);
	
	/**
	 * 生成底单编号
	 * @return
	 */
	public String genOrderNo();
	
	//批量插入
	public boolean addOrder(List<OrderInfoPO> list);
}
