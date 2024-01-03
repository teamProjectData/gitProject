package com.example.demo.svc;

import java.util.Map;

public interface MemSvc {

	void joinProc(Map<String, Object> map);

	int LoginProc(String uid, String upw);
	

}
