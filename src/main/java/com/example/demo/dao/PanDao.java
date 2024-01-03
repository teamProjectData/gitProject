package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.PanDto;

@Mapper
public interface PanDao {
	
	public List<PanDto> mtdListView();
	public List<PanDto> mtdListViewPlus(String param1, String param2);
}
