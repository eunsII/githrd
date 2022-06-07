package com.githrd.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.githrd.www.dao.*;
import com.githrd.www.util.*;

@Controller
@RequestMapping("/gBoard")
public class GuestBoard {
	@Autowired(required=false)
	GBoardDao gDao;
	
	@RequestMapping("/gBoardList.blp")
	public ModelAndView gBoardList(ModelAndView mv, PageUtil page) {
//		System.out.println("******************** page.nowPage : " + page.getNowPage());
//		System.out.println("******************** page.pageRow : " + page.getPageRow());
		
		// 게시글 목록 조회
		
		
		mv.setViewName("gBoard/gBoardList");
		
		return mv;
	}
}
