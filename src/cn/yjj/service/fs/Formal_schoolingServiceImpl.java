package cn.yjj.service.fs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.yjj.dao.fs.Formal_schoolingMapper;
import cn.yjj.pojo.Formal_schooling;

@Service("formal_schoolingService")
public class Formal_schoolingServiceImpl implements Formal_schoolingService{
	@Autowired
	private Formal_schoolingMapper formal_schoolingMapper;
	
	@Override
	public List<Formal_schooling> selectFormal_schoolingList() {
		// TODO Auto-generated method stub
		return formal_schoolingMapper.selectFormal_schoolingList();
	}

}
