package com.ezen.infoRum.svc;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.infoRum.dao.MemDao;

@Service
public class MemSvcImp implements MemSvc {
	
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