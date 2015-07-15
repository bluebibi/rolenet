package com.springapp.controller;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;

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

	
	@RequestMapping("/")
	public String printWelcome(ModelMap model) {
		model.addAttribute("hit", movieListMapper.selectMovieByHit());
		model.addAttribute("last", movieListService.LastList());
		model.addAttribute("count", movieListMapper.movieCount());
		model.addAttribute("scroll_movie", movieListService.list());
		return "home/index.jsp";
	}
	@RequestMapping("/haha")
	public String printWelcomez(ModelMap model) {
		return "movie/test.jsp";
	}
	
	@RequestMapping(value = "/movietween/addContact.do", method = RequestMethod.POST)
	public ModelAndView addContact(
		@ModelAttribute("contact") BoardList boardlist, BindingResult result) {
		System.out.println("authortname : " + boardlist.getUauthor());
		return new ModelAndView("addContact.jsp", "command", boardlist);
	}

	@RequestMapping("/movietween/contacts.do")
	public ModelAndView showContacts() {
		BoardList c = new BoardList();
		c.setUtitle("������������������������������");
		c.setUcontent("������������������������������������������������������������������������������������������������������������������������������������������������������������������");
		c.setUauthor("������������������������������������������������������������������������������������������������������������������������������������������������������������������");

		return new ModelAndView("contact.jsp", "command", c);
	}
	//���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙����筌�占썲���������э옙������占�

	/* search for movie */
	@RequestMapping(value = "/search.do", method = RequestMethod.POST)
	public String SearchMovie(ModelMap model,HttpServletRequest request) {
		movieListService.addHitByName(request.getParameter("query"));
		MovieList movieList = movieListService.selectMovieByName(request.getParameter("query"));
		System.out.println(request.getParameter("query"));
		model.addAttribute("n", movieList);
		model.addAttribute("naverRole", charactorsListService.selectNaverRoleByMovieId(movieList.getId()));
		model.addAttribute("degreeRole", charactorsListService.selectDegreeRoleByMovieId(movieList.getId()));
		model.addAttribute("betweenRole", charactorsListService.selectBetweenRoleByMovieId(movieList.getId()));
		return "movie/Tab_movielistdetail.jsp";
	}

	// ��占썲��������������占�
	@RequestMapping(value = "/Tab_boardlist", method = RequestMethod.GET)
	public String BoardList(ModelMap model) {
		model.addAttribute("list", boardListService.list());
		return "community/Tab_boardlist.jsp";
	}

	// ��占썲���������������몃Ь�������⑨옙�깍옙
	@RequestMapping(value = "/Tab_boardwriting")
	public String BoardWriting(ModelMap model) {

		return "community/Tab_boardwriting.jsp";
	}

	// ��占썲��������������占� ����������占썲������
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
	
	@RequestMapping(value = "/Tab_compare", method = RequestMethod.GET)
	public String MovieCompare(ModelMap model, int movie1) {
		System.out.println(movie1);
		MovieList movieList = movieListService.selectMovieById(movie1);
		model.addAttribute("movie1",movieList);
		model.addAttribute("list3", movieListService.list());
		return "movie/Tab_compare.jsp";
	}
	
	@RequestMapping(value = "/movielist2/**")
	public void MovieList2(ModelMap model) {
		System.out.println("!!!!!!");
	}

	//占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
	@RequestMapping(value = "/Tab_movielistdetail")
	public String MovieListDetail(ModelMap model, int id) {
		movieListService.addHit(id);
		MovieList movieList = movieListService.selectMovieById(id);
		model.addAttribute("n", movieList);
		model.addAttribute("naverRole", charactorsListService.selectNaverRoleByMovieId(id));
		model.addAttribute("degreeRole", charactorsListService.selectDegreeRoleByMovieId(id));
		model.addAttribute("betweenRole", charactorsListService.selectBetweenRoleByMovieId(id));
		return "movie/Tab_movielistdetail.jsp";
	}
	@RequestMapping(value = "/python")
	public void python(ModelMap model) throws IOException{
		//BufferedWriter out = new BufferedWriter(new FileWriter("/Users/kth/so/kmeans2.py"));
		//out.write(prg);
		//out.close();
		Process p = Runtime.getRuntime().exec("python /Users/kth/so/kmeans2.py");
		BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
		String ret;
		while ((ret = in.readLine()) != null) {
	        System.out.println(ret);
	      }
		//System.out.println("value is : "+ret);
	}
	
	@RequestMapping(value = "/Tab_charts")
	public String chart(ModelMap model, int flag, int flag2) {
		model.addAttribute("flag", flag);
		model.addAttribute("flag2",flag2);
		model.addAttribute("last", movieListService.LastList15());
		model.addAttribute("list2000", movieListService.year2000());
		model.addAttribute("list2005", movieListService.year2005());
		model.addAttribute("list2010", movieListService.year2010());
		model.addAttribute("list2015", movieListService.year2015());
		model.addAttribute("Spactators",movieListService.LastList15bySpectators());
		return "movie/Tab_charts.jsp";
	}

	// 嶺�占썲������占쏙옙����������占쏙옙��占�
	@RequestMapping(value = "/Tab_mypage")
	public String MyPage(ModelMap model) {
		return "mypage/Tab_mypage.jsp";
	}

	// �������β�쎌��������������������
	@RequestMapping(value = "/Tab_editprofile")
	public String EditProfile(ModelMap model) {
		return "mypage/Tab_editprofile.jsp";
	}

	//��諛몌옙������������ ������������
	@RequestMapping(value = "/Tab_mygraph")
	public String MyGraph(ModelMap model) {
		return "mypage/Tab_mygraph.jsp";
	}

	//�ル����������
	@RequestMapping(value = "/Tab_charge")
	public String MyCharge(ModelMap model) {
		return "mypage/Tab_charge.jsp";
	}

	//����占쏙옙占썲�������띰옙��占�
	@RequestMapping(value = "/Tab_about")
	public String About(ModelMap model) {
		return "about/Tab_about.jsp";
	}

	@RequestMapping(value = "/Tab_Explain")
	public String Explain(ModelMap model) {
		return "movie/Tab_Explain.jsp";
	}

	@RequestMapping(value = "/Tab_Director", method= RequestMethod.GET)
	public String Director(ModelMap model,String director) {
		model.addAttribute("dlist",movieListService.Dlist());
		//model.addAttribute("dlist2",movieListService.selectMovieByDirector(director));
		return "movie/Tab_Director.jsp";
	}

	@RequestMapping(value = "/Tab_DirectorDetail", method= RequestMethod.GET)
	public String DirectorDetail(ModelMap model,String director){
		//director = ;
		//MovieList movieList = movieListService.selectMovieByDirector(director);
		//model.addAttribute("dlist2", movieList);
		System.out.println(director);
		model.addAttribute("dlist2", movieListService.selectMovieByDirector(director));
		return "movie/Tab_DirectorDetail.jsp";
	}
}