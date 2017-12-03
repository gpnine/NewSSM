package com.lanou.service.impl;

import com.lanou.dao.UserMapper;
import com.lanou.dao.WineMapper;
import com.lanou.entity.User;
import com.lanou.entity.Wine;
import com.lanou.service.UserService;
import com.lanou.service.WineService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("wineService")
public class WineServiceImpl implements WineService {
	@Resource
	private WineMapper wineMapper;

	public List<Wine> findWines() {
		return wineMapper.findWines();
	}

	public List<Wine> findLike(String likeName) {
		return wineMapper.findLike(likeName);
	}
}
