package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.svc.PanServiceImp;

@Controller
public class categoryController {
	@Autowired
	private PanServiceImp panServiceImp;
	
	// 강아지게시판 초기 리스트
	@RequestMapping("/boardTimeline")
	public String mtdBoardTimeline(Model model) {
		model.addAttribute("PanList", panServiceImp.mtdListView());
		return "category_Dog/boardTimeline";
	}
	
	// 강아지게시판 무한 스크롤 비동기 식 리스트 
	@RequestMapping("/doglist")
	public String list(
			Model model , 
			@RequestParam("param1") String param1,
			@RequestParam("param2") String param2
			) {
		
		model.addAttribute("PanList", panServiceImp.mtdListViewPlus(param1,param2));
		return "category_Dog/list";
	}
}
