package com.lanou.service;

import com.lanou.entity.Wine;

import java.util.List;

public interface WineService {

	public List<Wine> findWines();
	public List<Wine> findWineById(Integer WineId);
	public List<Wine> findLike(String likeName);

//	商品详情
	public Wine goods_detile(Integer goodsId);
<<<<<<< HEAD

=======
>>>>>>> 78a9cb94aeab6faeb60f8367a0eec6af6216669a
	public List<Wine> findScope(Integer a,Integer b);
}
