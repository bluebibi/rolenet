package com.springapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springapp.dao.BoardListMapper;
import com.springapp.dao.MovieListMapper;
import com.springapp.entity.BoardList;
import com.springapp.entity.MovieList;
import com.springapp.service.BoardListService;
import com.springapp.service.MovieListService;

@Controller
public class HelloController {

	@Autowired
	private BoardListService boardListService;
	@Autowired
	private BoardListMapper boardListMapper;
	@Autowired
	private MovieListService movieListService;
	@Autowired
	private MovieListMapper movieListMapper;

	// ///////////////////////////////////////////인덱스페이지
	@RequestMapping("/")
	public String printWelcome(ModelMap model) {
		model.addAttribute("hit", movieListMapper.selectMovieByHit());
		model.addAttribute("last", movieListService.LastList());
		model.addAttribute("count", movieListMapper.movieCount());
		return "home/index.jsp";
	}

	// 게시판 글쓰기를 위한 테스트테스트
	// 테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트
	@RequestMapping(value = "/movietween/addContact.do", method = RequestMethod.POST)
	public ModelAndView addContact(
			@ModelAttribute("contact") BoardList boardlist, BindingResult result) {
		System.out.println("authortname : " + boardlist.getUauthor());
		return new ModelAndView("addContact.jsp", "command", boardlist);
	}

	@RequestMapping("/movietween/contacts.do")
	public ModelAndView showContacts() {
		BoardList c = new BoardList();
		c.setUtitle("하하하하하");
		c.setUcontent("占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙");
		c.setUauthor("占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙");

		return new ModelAndView("contact.jsp", "command", c);
	}

	//테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트테스트

	/* search for movie */
	@RequestMapping(value = "/movietween/search", method = RequestMethod.GET)
	public String SearchMovie(ModelMap model, String name) {
		movieListService.addHitByName(name);
		MovieList movieList = movieListService.selectMovieByName(name);
		model.addAttribute("n", movieList);
		return "movie/Tab_movielistdetail.jsp";
	}

	// 게시판
	@RequestMapping(value = "/movietween/Tab_boardlist", method = RequestMethod.GET)
	public String BoardList(ModelMap model) {
		model.addAttribute("list", boardListService.list());
		return "community/Tab_boardlist.jsp";
	}

	// 게시판글쓰기
	@RequestMapping(value = "/movietween/Tab_boardwriting")
	public String BoardWriting(ModelMap model) {

		return "community/Tab_boardwriting.jsp";
	}

	// 게시판 자세히
	@RequestMapping(value = "/movietween/Tab_boarddetail")
	public String BoardDetail(ModelMap model, int uId) {
		BoardList boarddetailentity = boardListService
				.selectAllBoardContents(uId);
		model.addAttribute("result", boarddetailentity);
		return "community/Tab_boarddetail.jsp";
	}

	// 영화리스트
	@RequestMapping(value = "/movietween/Tab_movielist", method = RequestMethod.GET)
	public String MovieList(ModelMap model) {
		model.addAttribute("list2", movieListService.list());
		return "movie/Tab_movielist.jsp";
	}
	
	@RequestMapping(value = "/movielist2/**")
	public void MovieList2(ModelMap model) {
		System.out.println("!!!!!!");
	}

	//영화디테일
	@RequestMapping(value = "/movietween/Tab_movielistdetail")
	public String MovieListDetail(ModelMap model, int id) {
		movieListService.addHit(id);
		MovieList movieList = movieListService.selectMovieById(id);
		model.addAttribute("n", movieList);
		return "movie/Tab_movielistdetail.jsp";
	}

	// 마이페이지
	@RequestMapping(value = "/movietween/Tab_mypage")
	public String MyPage(ModelMap model) {
		return "mypage/Tab_mypage.jsp";
	}

	// 프로필수정
	@RequestMapping(value = "/movietween/Tab_editprofile")
	public String EditProfile(ModelMap model) {
		return "mypage/Tab_editprofile.jsp";
	}

	//그래프 수정
	@RequestMapping(value = "/movietween/Tab_mygraph")
	public String MyGraph(ModelMap model) {
		return "mypage/Tab_mygraph.jsp";
	}

	//금액
	@RequestMapping(value = "/movietween/Tab_charge")
	public String MyCharge(ModelMap model) {
		return "mypage/Tab_charge.jsp";
	}

	//우리소개
	@RequestMapping(value = "/movietween/Tab_about")
	public String About(ModelMap model) {
		return "about/Tab_about.jsp";
	}

}