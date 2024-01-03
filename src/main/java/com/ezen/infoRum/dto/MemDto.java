package com.ezen.infoRum.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemDto {
	
	private int num;
	private String uid;
	private String upw;
	private String uname;
	private String uemail;
	private Timestamp regTM;

}
