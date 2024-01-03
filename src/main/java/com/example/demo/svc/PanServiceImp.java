package com.example.demo.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.PanDao;
import com.example.demo.dto.PanDto;

@Service
public class PanServiceImp implements PanService {
	
	@Autowired
	private PanDao panDao;
	
	public List<PanDto> mtdListView() {
		return panDao.mtdListView();
	};
	
	@Override
	public List<PanDto> mtdListViewPlus(String param1, String param2) {
		return panDao.mtdListViewPlus(param1,param2);
	}
}
