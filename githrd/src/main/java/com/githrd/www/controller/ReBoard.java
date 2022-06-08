package com.githrd.www.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.githrd.www.dao.*;
import com.githrd.www.vo.*;
import com.githrd.www.util.*;

/**
 * 이 클래스는 댓글게시판 관련 요청을 처리할 클래스
 * @author	전은석
 * @since	2022.06.08
 * @version	v.1.0
 * 
 * 			작업이력 ]
 * 				2022.06.08	-	담당자 : 전은석
 * 									클래스 제작, 
 * 									리스트보기 요청 처리
 *
 */

@Controller
@RequestMapping("/reBoard")
public class ReBoard {
	@Autowired
	ReBoardDao rDao;
	
	/**
	 * 댓글게시판 리스트보기 요청
	 */
	@RequestMapping("/reBoardList.blp")
	public ModelAndView reBoardList(ModelAndView mv, PageUtil page) {
		// 할일
		// 데이터베이스에서 데이터 가져오고
		// PageUtil이 먼저 만들어져야하기 때문에
		// 총 게시글 수부터 가져온다.
		int total = rDao.getTotal();
		
		// PageUtil 을 셋팅해준다.
		page.setPage(total);
		
		// 리스트를 조회한다.
		List<BoardVO> list = rDao.getList(page);
		
		mv.addObject("LIST", list);
		mv.addObject("PAGE", page);
		mv.setViewName("reBoard/reBoardList");
		
		return mv;
	}
}
