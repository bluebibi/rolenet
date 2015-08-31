package com.springapp.controller;

import java.io.*;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.springapp.entity.Recommend;
import com.springapp.entity.UserMovieList;
import com.springapp.service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.springapp.dao.BoardListMapper;
import com.springapp.dao.CharactorListMapper;
import com.springapp.dao.FileDTO;
import com.springapp.dao.MovieListMapper;
import com.springapp.entity.BoardList;
import com.springapp.entity.MovieList;

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
	@Autowired
	private UserMovieListService userMovieListService;
	@Autowired
	private RecommendMovieService recommendMovieService;

	@RequestMapping("/")
	public String printWelcome(ModelMap model) {
		model.addAttribute("hit", movieListMapper.selectMovieByHit());
		model.addAttribute("last", movieListService.LastList());
		//model.addAttribute("count", movieListMapper.movieCount());
		model.addAttribute("scroll_movie", movieListService.list());

		
		model.addAttribute("listAll_jangwon",movieListService.list());
		model.addAttribute("list12_jangwon",movieListService.list_limit(0,12));
		model.addAttribute("list_jangwon",movieListService.list_jangwon(1, 4));
		model.addAttribute("id_2",4);
		return "home/index.jsp";
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
	public String SearchMovie(ModelMap model, HttpServletRequest request) {
		movieListService.addHitByName(request.getParameter("query"));
		MovieList movieList = movieListService.selectMovieByName(request.getParameter("query"));
		System.out.println(request.getParameter("query")+"");
		model.addAttribute("n", movieList);
		model.addAttribute("naverRole", charactorsListService.selectNaverRoleByMovieId(movieList.getId()));
		model.addAttribute("degreeRole", charactorsListService.selectDegreeRoleByMovieId(movieList.getId()));
		model.addAttribute("betweenRole", charactorsListService.selectBetweenRoleByMovieId(movieList.getId()));
		return "movie/Tab_movielistdetail.jsp";
	}


	@RequestMapping(value = "/Tab_boardlist", method = RequestMethod.GET)
	public String BoardList(ModelMap model) {
		model.addAttribute("list", boardListService.list());
		return "community/Tab_boardlist.jsp";
	}


	@RequestMapping(value = "/Tab_boardwriting")
	public String BoardWriting(ModelMap model) {

		return "community/Tab_boardwriting.jsp";
	}


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
	
	@RequestMapping(value = "/ajax.do")
	public String testJangwon(ModelMap model, int id_1) {
		model.addAttribute("list_jangwon",movieListService.list_jangwon(id_1, id_1+36));
		model.addAttribute("id_2",id_1 + 24);
		return "movie/page_jangwontest.jsp";
	}
	@RequestMapping(value = "/pages", method = RequestMethod.GET)
	public String MovieList3(ModelMap model, int idx) {
		model.addAttribute("idx", idx);
        model.addAttribute("list2_jangwon", movieListService.list_limit((idx-1)*4, 4));
		return "movie/page2.jsp";
	}
	


	@RequestMapping(value = "/Tab_compare", method = RequestMethod.GET)
	public String MovieCompare(ModelMap model, int movie1) {
		System.out.println(movie1);
		MovieList movieList = movieListService.selectMovieById(movie1);
		model.addAttribute("movie1", movieList);
		model.addAttribute("list3", movieListService.list());
		return "movie/Tab_compare.jsp";
	}

	@RequestMapping(value = "/movielist2/**")
	public void MovieList2(ModelMap model) {
		System.out.println("!!!!!!");
	}


	@RequestMapping(value = "/Tab_movielistdetail")
	public String MovieListDetail(ModelMap model, int id) {
		movieListService.addHit(id);
		MovieList movieList = movieListService.selectMovieById(id);
		String director = movieList.getDirector();
		System.out.println(director);
		Recommend recommend = recommendMovieService.selectMovieContentsByID(id);
		int cluster;
		model.addAttribute("n", movieList);
		model.addAttribute("naverRole", charactorsListService.selectNaverRoleByMovieId(id));
		model.addAttribute("degreeRole", charactorsListService.selectDegreeRoleByMovieId(id));
		//model.addAttribute("betweenRole", charactorsListService.selectBetweenRoleByMovieId(id));
		cluster = recommend.getCluster();
		System.out.println(cluster);
		model.addAttribute("recommend",recommendMovieService.list(id,cluster));
		model.addAttribute("directorMovies", movieListService.selectMovieByDirector(director,id));
		System.out.println(movieListService.selectMovieByDirector(director,id));
		return "movie/Tab_movielistdetail.jsp";
	}

	@RequestMapping(value = "/python")
	public void python(ModelMap model) throws IOException {
		//BufferedWriter out = new BufferedWriter(new FileWriter("/Users/kth/so/kmeans2.py"));
		//out.write(prg);
		//out.close();

		Process p = Runtime.getRuntime().exec("python /Users/kth/so/file.py");
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
		model.addAttribute("flag2", flag2);
		model.addAttribute("last", movieListService.LastList15());
		model.addAttribute("list2000", movieListService.year2000());
		model.addAttribute("list2005", movieListService.year2005());
		model.addAttribute("list2010", movieListService.year2010());
		model.addAttribute("list2015", movieListService.year2015());
		model.addAttribute("Spectators", movieListService.LastList15bySpectators());
		return "movie/Tab_charts.jsp";
	}


	@RequestMapping(value = "/Tab_mypage")
	public String MyPage(ModelMap model) {
		return "mypage/Tab_mypage.jsp";
	}


	@RequestMapping(value = "/Tab_editprofile")
	public String EditProfile(ModelMap model) {
		return "mypage/Tab_editprofile.jsp";
	}


	@RequestMapping(value = "/Tab_mygraph")
	public String MyGraph(ModelMap model) {
		return "mypage/Tab_mygraph.jsp";
	}


	@RequestMapping(value = "/Tab_charge")
	public String MyCharge(ModelMap model) {
		return "mypage/Tab_charge.jsp";
	}


	@RequestMapping(value = "/Tab_about")
	public String About(ModelMap model) {
		return "about/Tab_about.jsp";
	}

	@RequestMapping(value = "/Tab_Explain")
	public String Explain(ModelMap model) {
		return "movie/Tab_Explain.jsp";
	}

	@RequestMapping(value = "/Tab_Director", method = RequestMethod.GET)
	public String Director(ModelMap model, String director) {
		model.addAttribute("dist", movieListService.dist());
		//model.addAttribute("dlist2",movieListService.selectMovieByDirector(director));
		return "movie/Tab_Director.jsp";
	}

	@RequestMapping(value = "/Tab_DirectorDetail", method = RequestMethod.GET)
	public String DirectorDetail(ModelMap model, int id) {
		//director = ;
		//MovieList movieList = movieListService.selectMovieByDirector(director);
		//model.addAttribute("dlist2", movieList);
		System.out.println(id);
		//model.addAttribute("dist", movieListService.dist());
		model.addAttribute("dist2", movieListService.selectMovieByDirector2(id));
		return "movie/Tab_DirectorDetail.jsp";
	}

	@RequestMapping(value = "/upload.do")
	public String fileupload(ModelMap model) {

		model.addAttribute("path",this.getClass().getResource("").getPath());
		return "movie/fileForm.jsp";
	}

	//	@RequestMapping(value = "/insertInfo.do", method = RequestMethod.POST)
	//	public String insertInfo(ModelMap model,HttpServletRequest request){
	//
	//		System.out.println("haha" + request.getParameter("name"));
	//		return "movie/fileForm.jsp";
	//	}


	@RequestMapping(value = "/file.do", method = RequestMethod.POST)
	public String fileSubmit(FileDTO dto, HttpServletRequest request) throws IOException {

		System.out.println("file.do start");
		String path = this.getClass().getResource("").getPath();
		System.out.println("path : " + path);
		int index = path.indexOf("/classes");
		path = path.substring(0, index);
		///Users/kth/rolenet/src/main/webapp/WEB-INF/resources/scenario/finall.py
		System.out.println(this.getClass().getResource("").getPath() + "," + index + "," + path);
		path += "/resources/scenario/";
		int topnum = userMovieListService.topNum();
		topnum = topnum + 1;
		System.out.println("file upload");
		MultipartFile uploadfile = dto.getUploadfile();
		if (uploadfile != null) {
			//String fileName = uploadfile.getOriginalFilename();
			dto.setFileName(topnum + ".txt");
			try {
				// 1. FileOutputStream 사용
				// byte[] fileData = file.getBytes();
				// FileOutputStream output = new FileOutputStream("C:/images/" + fileName);
				// output.write(fileData);

				// 2. File 사용
				File file = new File(path + topnum + ".txt");
				uploadfile.transferTo(file);
			} catch (IOException e) {
				e.printStackTrace();
			} // try - catch
		} // if

		String name = request.getParameter("name");
		String director = request.getParameter("director");
		String synopsis = request.getParameter("content");

		System.out.println("name = " + name);
		System.out.println("director = " + director);
		System.out.println("synopsis = " + synopsis);


		userMovieListService.insertUserMovie(topnum, director, synopsis, name);
		System.out.println("디비 입력완료 ㅋㅎㅋ");
		String exePython = "python " + path +"finall.py" + " " + path;
		System.out.print(exePython);
		Process p = Runtime.getRuntime().exec(exePython);
		System.out.println("파이썬 실행 완료 ㅋㅎㅋ");
		BufferedReader in = new BufferedReader(new InputStreamReader(p.getInputStream()));
		String ret;
		while ((ret = in.readLine()) != null) {
			System.out.println(ret);
		}
		System.out.println("complete");
		// 데이터 베이스 처리를 현재 위치에서 처리
		return "movie/fileForm.jsp"; // 리스트 요청으로 보내야하는데 일단 제외하고 구현
	}
	
	

}