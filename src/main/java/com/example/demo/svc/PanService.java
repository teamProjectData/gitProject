package com.example.demo.svc;

import java.util.List;

import com.example.demo.dto.PanDto;

public interface PanService {
	public List<PanDto> mtdListView();
	
	public List<PanDto> mtdListViewPlus(String param1, String param2);
}
