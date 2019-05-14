package cn.yjj.dao.fs;

import java.util.List;

import cn.yjj.pojo.Formal_schooling;

public interface Formal_schoolingMapper {
	/**
	 * 查询所有学历
	 * @return
	 */
	public List<Formal_schooling> selectFormal_schoolingList();
}
