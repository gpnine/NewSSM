package com.lanou.service;

import com.lanou.entity.Wine;

import java.util.List;

public interface WineService {
	public List<Wine> findWines();
	public List<Wine> findLike(String likeName);
}
