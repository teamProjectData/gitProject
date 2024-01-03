package com.example.demo.svc;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MemDao;

@Service
public class MemSvsImp implements MemSvc {
	
	@Autowired
	MemDao memDao;
	
	@Override
	public void joinProc(Map<String, Object> map) {
		memDao.joinProc(map);
	}
	
	@Override
	public int LoginProc(String uid, String upw) {
	
		return memDao.LoginProc(uid,upw);
	}
}
