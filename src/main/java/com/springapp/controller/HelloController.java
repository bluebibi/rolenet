package com.springapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springapp.dao.BoardListMapper;
import com.springapp.entity.BoardList;
import com.springapp.service.BoardListService;
import com.springapp.service.BoardListServiceImpl;

@Controller
public class HelloController {
	
	@Autowired
	private BoardListService boardListService;

	@Autowired
	private BoardListMapper boardListMapper;

	/////////////////////////////////////////////홈
	@RequestMapping("/")
	public String printWelcome(ModelMap model) {
		return "home/index.jsp";
	}

	//개시판을 위함 테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트
	@RequestMapping(value="/addContact.do", method=RequestMethod.POST)
	public ModelAndView addContact(@ModelAttribute("contact") BoardList boardlist, BindingResult result){
		System.out.println("authortname : "+boardlist.getUauthor());
		return new ModelAndView("addContact.jsp","command",boardlist);
	}

	@RequestMapping("/contacts.do")
	public ModelAndView showContacts(){
		BoardList c = new BoardList();
		c.setUtitle("제목");
		c.setUcontent("글내용");
		c.setUauthor("작성자");

		return new ModelAndView("contact.jsp","command",c);
	}
	////테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트

	
	
	
	/////////////////////////////////////////////게시판 리스트
	@RequestMapping(value="/Tab_boardlist.do",method=RequestMethod.GET)
	public String BoardList(ModelMap model){
		model.addAttribute("list",boardListService.list());
		return "community/Tab_boardlist.jsp";
	}
	//게시판 글쓰기
	@RequestMapping(value="/Tab_boardwriting.do")
	public String BoardWriting(ModelMap model){

		return "community/Tab_boardwriting.jsp";
	}
	
	//게시판 자세히보기
	@RequestMapping(value="/Tab_boarddetail.do")
	public String BoardDetail(ModelMap model,int uId){
		BoardList boarddetailentity = boardListService.selectAllBoardContents(uId);
		model.addAttribute("result",boarddetailentity);
		return "community/Tab_boarddetail.jsp";
	}
	
	/////////////////////////////////////////////영화리스트보기
	@RequestMapping(value="/movielist")
	public String MovieList(ModelMap model){
		return "movie/Tab_movielist.html";
	}
	
	@RequestMapping(value="/movielist2/**")
	public void MovieList2(ModelMap model){
		System.out.println("!!!!!!");
	}
	
	//영화 그래프자세히보기
	@RequestMapping(value="/Tab_movielistdetail.do")
	public String MovieListDetail(ModelMap model){

		return "movie/Tab_movielistdetail.jsp";
	}


	
	
	
	/////////////////////////////////////////////마이페이지
	@RequestMapping(value="/Tab_mypage.do")
	public String MyPage(ModelMap model){
		return "mypage/Tab_mypage.html";
	}
	//정보수정
	@RequestMapping(value="/Tab_editprofile.do")
	public String EditProfile(ModelMap model){
		return "mypage/Tab_editprofile.html";
	}
	//그래프보기
	@RequestMapping(value="/Tab_mygraph.do")
	public String MyGraph(ModelMap model){
		return "mypage/Tab_mygraph.html";
	}
	//금액충전
	@RequestMapping(value="/Tab_charge.do")
	public String MyCharge(ModelMap model){
		return "mypage/Tab_charge.html";
	}
	
	
	
	/////////////////////////////////////////////어바웃
	@RequestMapping(value="/Tab_about.do")
	public String About(ModelMap model){
		return "about/Tab_about.html";
	}

}