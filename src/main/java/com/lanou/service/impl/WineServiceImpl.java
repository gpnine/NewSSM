package com.lanou.service.impl;

import com.lanou.dao.UserMapper;
import com.lanou.dao.WineMapper;
import com.lanou.entity.User;
import com.lanou.entity.Wine;
import com.lanou.service.UserService;
import com.lanou.service.WineService;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("wineService")
public class WineServiceImpl implements WineService {
	@Resource
	private WineMapper wineMapper;

	public List<Wine> findWines() {
		return wineMapper.findWines();
	}

	public List<Wine> findWineById(Integer WineId) {
		return wineMapper.findWineById(WineId);
	}

	public List<Wine> findScope(Integer a, Integer b) {
		Map map = new HashMap();
		map.put("a",a);
		map.put("b",b);
		return wineMapper.findScope(map);
	}

	public List<Wine> rexiao() {
		return wineMapper.rexiao();
	}

	public List<Wine> moreWines(Integer c) {
		Map map = new HashMap();
		map.put("c",c);
		return wineMapper.moreWines(map);
	}

	public List<Wine> findLike(String likeName) {
		return wineMapper.findLike(likeName);
	}

	public Wine goods_detile(Integer wid) {

		return wineMapper.goods_detile(wid);
	}

	public Wine findWineByWineId(Integer wineId) {
		return wineMapper.findWineByWineId(wineId);
	}
}
