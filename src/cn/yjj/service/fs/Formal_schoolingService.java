package cn.yjj.service.fs;

import java.util.List;

import cn.yjj.pojo.Formal_schooling;

public interface Formal_schoolingService {
	/**
	 * 查询所有学历
	 * @return
	 */
	public List<Formal_schooling> selectFormal_schoolingList();
}
