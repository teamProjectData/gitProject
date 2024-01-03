package com.example.demo.dto;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class PanDto {

	private String num;
	private String category;
	private String writer;
	private String title;
	private String content;
	private Timestamp createdDate;
	
}
