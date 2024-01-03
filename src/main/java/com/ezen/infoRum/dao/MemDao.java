package com.ezen.infoRum.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
@Mapper
public interface MemDao {


		void joinProc(Map<String, Object> map);

		int LoginProc(String uid, String upw);

}
