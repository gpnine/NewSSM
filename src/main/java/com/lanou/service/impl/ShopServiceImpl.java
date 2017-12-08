package com.lanou.service.impl;

import com.lanou.dao.ShopMapper;
import com.lanou.entity.Shop;
import com.lanou.service.ShopService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("shopService")
public class ShopServiceImpl implements ShopService {
	@Resource
	private ShopMapper shopMapper;

	public List<Shop> findFenlei(Integer parentId) {
		return shopMapper.findFenlei(parentId);
	}

	public List<Shop> findNotNull() {
		return shopMapper.findNotNull();
	}

	public List<Shop> findMore(Integer parentId) {
		return shopMapper.findMore(parentId);
	}
}
