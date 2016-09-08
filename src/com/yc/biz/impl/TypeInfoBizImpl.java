package com.yc.biz.impl;

import java.util.List;

import com.yc.biz.ITypeInfoBiz;
import com.yc.dao.DBHelper;
import com.yc.po.TypeInfoPO;

public class TypeInfoBizImpl implements ITypeInfoBiz {

	DBHelper db =new DBHelper();
	@Override
	public List<TypeInfoPO> findAll() {
		String sql="select * from typeInfo";
		return db.find(sql, null, TypeInfoPO.class);
	}

}
