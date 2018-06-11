package com.ys.jin;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.dto.MemberVO;
import member.dao.MemberDAO;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "board/index";
	}

	@RequestMapping("/board/index")
	public String indexpg() {
		return "board/index";
	}

	@RequestMapping("/board/MemberShip")
	public String membershippg() {
		return "board/MemberShip";
	}

	// 이동
	@RequestMapping(value = "/board/index", method = RequestMethod.GET)
	public String member_joinGET() {
		return "board/index";
	}

	// 회원가입
	@RequestMapping(value = "/board/index", method = RequestMethod.POST)
	public String member_join(HttpServletRequest request, Model model) throws ServletException, IOException {
		int check = 0;
		System.out.println("member_join 실행");
		try {
			String password = request.getParameter("password");
			String passwordck = request.getParameter("passwordck");
			MemberDAO mDao = MemberDAO.getInstance();
			if (password.equals(passwordck)) {
				MemberVO mVo = new MemberVO();
				mVo.setId(request.getParameter("id"));
				mVo.setPwd(request.getParameter("password"));
				mVo.setName(request.getParameter("name"));
				check = mDao.insertMember(mVo);
				if (check == 1) {
					System.out.println("회원가입 성공?");
					return "/board/index";
				} else {
					return "/board/false";
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "/board/false";
		}
		return "/board/false";
	}

	@RequestMapping(value = "/board/join", method = RequestMethod.GET)
	public String joinpg2() {
		return "board/index";
	}

	// 로그인
	@RequestMapping(value = "/board/join", method = RequestMethod.POST)
	public String index_join(HttpServletRequest request, Model model) {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		System.out.println("id :" + id);
		System.out.println("password :" + password);

		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mVo = null;
		int memcheck = 0;

		try {
			mVo = mDao.memberCheck(id, password);
			System.out.println("mvo name :" + mVo.getName());
			memcheck = mDao.memcheck();
			if (memcheck == 1) {
				System.out.println("로그인 성공?");
				// request.setAttribute("membermVo", mVo);
				model.addAttribute("membermVo", mVo);
				return "/board/join";
			} else {
				return "/board/false";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "/board/false";
		}
	}

}
