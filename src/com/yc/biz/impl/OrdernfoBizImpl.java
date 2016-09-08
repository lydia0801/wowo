package com.yc.biz.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.yc.biz.IOrderInfoBiz;
import com.yc.dao.DBHelper;
import com.yc.po.OrderInfoPO;

public class OrdernfoBizImpl implements IOrderInfoBiz{
	DBHelper db = new DBHelper();
	
	@Override
	public boolean addOrder(OrderInfoPO po) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * 生成订单编号
	 */
	@Override
	public   String genOrderNo() {
		Date  date = new Date();
		DateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");
		String str = format.format(date);
		return str;
	}
 
	@Override
	public boolean addOrder(List<OrderInfoPO> list) {
		String sql ="insert into orderinfo values(seq_oid.nextval,?,?,?,?)";
		List<String> sqlList = new ArrayList<String>();//按顺序存储sql语句
		List<List<Object>> params = new ArrayList<List<Object>>();
		
		for(OrderInfoPO  po :list){
			List<Object> param = new ArrayList<Object>();
			param.add(po.getOrderNo());
			param.add(po.getCid());
			param.add(po.getWprice());
			param.add(po.getNums());
			params.add(param);
			sqlList.add(sql);//添加一条与参数值对应的 sql语句
		}
		try {
			int i = db.doUpdate(sqlList, params);
			if(i>0){
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

}
