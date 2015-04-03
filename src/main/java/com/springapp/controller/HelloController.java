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
import com.springapp.dao.CharactorListMapper;
import com.springapp.dao.MovieListMapper;
import com.springapp.entity.BoardList;
import com.springapp.entity.MovieList;
import com.springapp.service.BoardListService;
import com.springapp.service.CharactorsListService;
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
	@Autowired
	private CharactorListMapper charactorListMapper;
	@Autowired
	private CharactorsListService charactorsListService;
	// ///////////////////////////////////////////占쎈�占쎄�占썬�쏙옙占쏙옙��占�
	@RequestMapping("/")
	public String printWelcome(ModelMap model) {
		model.addAttribute("hit", movieListMapper.selectMovieByHit());
		model.addAttribute("last", movieListService.LastList());
		model.addAttribute("count", movieListMapper.movieCount());
		return "home/index.jsp";
	}

	// 野�占쏙옙占쏙옙占� 疫뀐옙占쎄�由곁��占� 占쏙옙占쏙옙 占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙占�
	// 占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙占�
	@RequestMapping(value = "/movietween/addContact.do", method = RequestMethod.POST)
	public ModelAndView addContact(
			@ModelAttribute("contact") BoardList boardlist, BindingResult result) {
		System.out.println("authortname : " + boardlist.getUauthor());
		return new ModelAndView("addContact.jsp", "command", boardlist);
	}

	@RequestMapping("/movietween/contacts.do")
	public ModelAndView showContacts() {
		BoardList c = new BoardList();
		c.setUtitle("占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙");
		c.setUcontent("占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙");
		c.setUauthor("占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙");

		return new ModelAndView("contact.jsp", "command", c);
	}

	//占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙紐�占쏙옙占썬�쏙옙占�

	/* search for movie */
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String SearchMovie(ModelMap model, String name) {
		movieListService.addHitByName(name);
		MovieList movieList = movieListService.selectMovieByName(name);
		model.addAttribute("n", movieList);
		return "movie/Tab_movielistdetail.jsp";
	}

	// 野�占쏙옙占쏙옙占�
	@RequestMapping(value = "/Tab_boardlist", method = RequestMethod.GET)
	public String BoardList(ModelMap model) {
		model.addAttribute("list", boardListService.list());
		return "community/Tab_boardlist.jsp";
	}

	// 野�占쏙옙占쏙옙占썸묾占쏙옙怨�由�
	@RequestMapping(value = "/Tab_boardwriting")
	public String BoardWriting(ModelMap model) {

		return "community/Tab_boardwriting.jsp";
	}

	// 野�占쏙옙占쏙옙占� 占쏙옙占쎈�占쏙옙
	@RequestMapping(value = "/Tab_boarddetail")
	public String BoardDetail(ModelMap model, int uId) {
		BoardList boarddetailentity = boardListService
				.selectAllBoardContents(uId);
		model.addAttribute("result", boarddetailentity);
		return "community/Tab_boarddetail.jsp";
	}
	@RequestMapping(value = "/Tab_movielist", method = RequestMethod.GET)
	public String MovieList(ModelMap model) {
		model.addAttribute("list2", movieListService.list());
		return "movie/Tab_movielist.jsp";
	}
	
	@RequestMapping(value = "/movielist2/**")
	public void MovieList2(ModelMap model) {
		System.out.println("!!!!!!");
	}

	//����������
	@RequestMapping(value = "/Tab_movielistdetail")
	public String MovieListDetail(ModelMap model, int id) {
		movieListService.addHit(id);
		MovieList movieList = movieListService.selectMovieById(id);
		model.addAttribute("n", movieList);
		model.addAttribute("naverRole", charactorsListService.selectBetweenRoleByMovieId(id));
		model.addAttribute("degreeRole", charactorsListService.selectDegreeRoleByMovieId(id));
		model.addAttribute("betweenRole", charactorsListService.selectNaverRoleByMovieId(id));
		return "movie/Tab_movielistdetail.jsp";
	}

	// 筌�占쏙옙��占쏙옙占쎈��占�
	@RequestMapping(value = "/Tab_mypage")
	public String MyPage(ModelMap model) {
		return "mypage/Tab_mypage.jsp";
	}

	// 占쏙옙嚥∽옙占쏙옙占쏙옙占쏙옙
	@RequestMapping(value = "/Tab_editprofile")
	public String EditProfile(ModelMap model) {
		return "mypage/Tab_editprofile.jsp";
	}

	//域밸�占쏙옙占쏙옙 占쏙옙占쏙옙
	@RequestMapping(value = "/Tab_mygraph")
	public String MyGraph(ModelMap model) {
		return "mypage/Tab_mygraph.jsp";
	}

	//疫뀐옙占쏙옙
	@RequestMapping(value = "/Tab_charge")
	public String MyCharge(ModelMap model) {
		return "mypage/Tab_charge.jsp";
	}

	//占쎄���占쏙옙揶�占�
	@RequestMapping(value = "/Tab_about")
	public String About(ModelMap model) {
		return "about/Tab_about.jsp";
	}

}