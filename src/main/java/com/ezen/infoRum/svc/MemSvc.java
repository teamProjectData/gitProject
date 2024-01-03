package com.ezen.infoRum.svc;

import java.util.Map;

public interface MemSvc {

	void joinProc(Map<String, Object> map);

	int LoginProc(String uid, String upw);
	

}