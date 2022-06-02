package com.githrd.www.controller;

import java.util.*;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.githrd.www.dao.MemberDao;
import com.githrd.www.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class Member {
	@Autowired
	MemberDao mDao;
	
	@RequestMapping("/login.blp")
	public String loginForm(HttpSession session, HttpServletResponse resp) {
		
		return "member/login";
	}
	
	@RequestMapping("/loginProc.blp")
	public ModelAndView loginProc(MemberVO mVO, HttpSession session, ModelAndView mv) {
		System.out.println("### 일반 사용자");
		int cnt = mDao.getLogin(mVO);
		String view = "";
		if(cnt == 1) {
			session.setAttribute("SID", mVO.getId());
			view = "redirect:../main.blp";
		} else {
			view = "redirect:login.blp";
		}
		mv.setViewName(view);
		return mv;
	}
	
	@RequestMapping(path="/loginProc.blp", params="id=admin")
	public ModelAndView adminLogin(MemberVO mVO, HttpSession session, ModelAndView mv) {
		System.out.println("### 관리자");
		
		int cnt = mDao.getLogin(mVO);
		String view = "";
		if(cnt == 1) {
			session.setAttribute("SID", mVO.getId());
			view = "redirect:../main.blp";
		} else {
			view = "redirect:login.blp";
		}
		mv.setViewName(view);
		return mv;
	}
	
	@RequestMapping("/logout.blp")
	public ModelAndView logout(ModelAndView mv, HttpSession session) {
		session.removeAttribute("SID");
		mv.setViewName("redirect:../main.blp");
		return mv;
	}
	
	@RequestMapping(path="/idCheck.blp", params="id")
	@ResponseBody
	public Map idCheck(String id) {
		HashMap map = new HashMap();
		String result = "NO";
		
		int cnt = mDao.getIdCnt(id);
		
		if(cnt == 0) {
			result = "OK";
		}
		
		map.put("result", result);
		return map;
	}
}
