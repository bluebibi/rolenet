<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Movietween | LINK 9th | Koreatech</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta content="width=device-width, initial-scale=1" name="viewport">
	<meta content="" name="description">
	<meta content="" name="author">
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link
			href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
			rel="stylesheet" type="text/css">
	<link
			href="http://218.150.181.131/assets/global/plugins/font-awesome/css/font-awesome.min.css"
			rel="stylesheet" type="text/css">
	<link
			href="http://218.150.181.131/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
			rel="stylesheet" type="text/css">
	<link href="http://218.150.181.131/assets/global/plugins/bootstrap/css/bootstrap.min.css"
		  rel="stylesheet" type="text/css">
	<link href="http://218.150.181.131/assets/global/plugins/uniform/css/uniform.default.css"
		  rel="stylesheet" type="text/css">
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
	<link href="http://218.150.181.131/assets/global/plugins/jqvmap/jqvmap/jqvmap.css"
		  rel="stylesheet" type="text/css">
	<link href="http://218.150.181.131/assets/global/plugins/morris/morris.css"
		  rel="stylesheet" type="text/css">
	<!-- END PAGE LEVEL PLUGIN STYLES -->
	<!-- BEGIN PAGE STYLES -->
	<link href="http://218.150.181.131/assets/admin/pages/css/tasks.css" rel="stylesheet"
		  type="text/css" />
	<!-- END PAGE STYLES -->
	<!-- BEGIN THEME STYLES -->
	<link href="http://218.150.181.131/assets/global/css/components.css" rel="stylesheet"
		  type="text/css">
	<link href="http://218.150.181.131/assets/global/css/plugins.css" rel="stylesheet"
		  type="text/css">
	<link href="http://218.150.181.131/assets/admin/layout3/css/layout.css" rel="stylesheet"
		  type="text/css">
	<link href="http://218.150.181.131/assets/admin/layout3/css/themes/default.css"
		  rel="stylesheet" type="text/css" id="style_color">
	<link href="http://218.150.181.131/assets/admin/layout3/css/custom.css" rel="stylesheet"
		  type="text/css">
	<!-- END THEME STYLES -->
	<link rel="shortcut icon" href="favicon.ico">
	<style type="text/css">
		#title_search {
			margin: 0 auto;
		}

		#container_jang {
			max-width: 510px;
			height: 280px;
			margin: auto;
		}
	</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-menu-fixed" class to set the mega menu fixed  -->
<!-- DOC: Apply "page-header-top-fixed" class to set the top menu fixed  -->
<body>
<%@include file="../includes/headerMenu.jsp"%>
						<!-- END PAGE BREADCRUMB -->
			<!-- BEGIN PAGE CONTENT INNER -->
			<div class="portlet light">
				<div class="portlet-body">
					<div class="row">
						<div class="col-md-3">
							<ul class="ver-inline-menu tabbable margin-bottom-10">
								<li class="active">
									<a data-toggle="tab" href="#tab_1">
										<i class="fa fa-briefcase"></i> 자주 하는 질문들 </a>
									<span class="after">
									</span>
								</li>
								<li>
									<a data-toggle="tab" href="#tab_2">
										<i class="fa fa-group"></i> 팀 소개 </a>
								</li>
								<li>
									<a data-toggle="tab" href="#tab_3">
										<i class="fa fa-leaf"></i> 관련 정보 </a>
								</li>
							</ul>
						</div>
						<div class="col-md-9">
							<div class="tab-content">
								<div id="tab_1" class="tab-pane active">
									<div id="accordion1" class="panel-group">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_1">
														1. ‘MOVIETWEEN’ 이 무슨 뜻인가요 ? </a>
												</h4>
											</div>
											<div id="accordion1_1" class="panel-collapse collapse in">
												<div class="panel-body">
													MOVIETWEEN은 movie와 between을 합친 용어로 영화들의 관계를 의미합니다.<br>
													웹사이트가 주로 사회관계망 분석기법과 그 지표들을 활용한 컨텐츠를 다루고 있기 때문에 영화와 영화들 사이의 관계를 생각하며 살펴보시면 더욱 유익한 시간이 될 수 있습니다.
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_2">
														2. 영화 시나리오는 어떻게 분석하나요 ?</a>
												</h4>
											</div>
											<div id="accordion1_2" class="panel-collapse collapse">
												<div class="panel-body">
													시나리오는 첫 번째, 모든 등장인물을 카운트하고 각 등장인물이 총 몇 번 등장했는지를 카운트합니다.
													두 번째, 각 장면(Scene)별로 나누어 첫 번째 과정을 한 번 더 진행합니다.<br>
													위 정보들을 토대로 등장인물들을 기준으로 등장인물의 등장 횟수가 많을수록 노드의 가중치를 주고, 같은 장면에 함께 등장한 등장인물마다 가중치를 주어 노드들간의 엣지를 정해 각 등장인물들 간의 사회관계망을 구성합니다.
												</div>
											</div>
										</div>
										<div class="panel panel-success">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_3">
														3. 사회관계망 분석 기법이란 무엇인가요 ?</a>
												</h4>
											</div>
											<div id="accordion1_3" class="panel-collapse collapse">
												<div class="panel-body">
													사람, 그룹, 조직, 컴퓨터 및 데이터 등 모든 객체 간의 관계 및 네트워크의 특성과 구조를 분석하고 그 결과를 시각화하는 첨단 분석기법입니다.<br> 저희는 이 분석 기법을 영화 시나리오에 적용해 시나리오만으로 여러 가지 관계, 특성 등을 연구, 분석하고 있습니다.
												</div>
											</div>
										</div>
										<div class="panel panel-warning">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_4">
														4. 그래프에 대해서 알려주세요. </a>
												</h4>
											</div>
											<div id="accordion1_4" class="panel-collapse collapse">
												<div class="panel-body">
													- 사회관계망 분석 기법을 통한 분석 자료를 이용해 그래프를 그렸습니다. 그래프는 Gephi라는 툴을 이용해 그렸으며 확장자 gexf의 파일로 만들어 데이터베이스화 하여 이용, 보관하고 있습니다.<br><br>
													- 그래프 등장인물들 간의 색깔은 Modularity를 구한 것으로 커뮤니티 알고리즘인 Louvain Community Detection Algorithm을 이용했습니다. <br>Gephi 툴에서 제공되는 기능으로 등장인물들이 얼마나 가까운 관계인지를 나타내는 척도로 사용되고 있습니다.
												</div>
											</div>
										</div>
										<div class="panel panel-danger">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_5">
														5. 주인공 검출에 대해 알려주세요. </a>
												</h4>
											</div>
											<div id="accordion1_5" class="panel-collapse collapse">
												<div class="panel-body">
													가중치 매개 중심도와 가중치 연결 중심도 두 가지를 활용, 비교해 주인공 검출을 했습니다.
													그 결과 네이버 영화의 주인공과 약 95퍼 이상 일치함을 알 수 있었습니다.
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_6">
														6. 영화 추천에 대해 알려주세요. </a>
												</h4>
											</div>
											<div id="accordion1_6" class="panel-collapse collapse">
												<div class="panel-body">
													클러스터링 기법 중 K-Means 알고리즘을 사용해 시나리오 구조의 특성을 이용해 영화를 추천했습니다.<br>
													보통 다른 영화 추천 서비스의 별점이나 장르 등의 추천도 있지만, 시나리오만을 가지고 비슷한 구조의 영화를 추천함으로써 좀 더 색다르고 의미 있는 추천을 했습니다.
												</div>
											</div>
										</div>

									</div>
								</div>
								<div id="tab_2" class="tab-pane">
									<div id="accordion2" class="panel-group">
										<div class="panel panel-warning">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_1">
														1. 팀 소개 </a>
												</h4>
											</div>
											<div id="accordion2_1" class="panel-collapse collapse in">
												<div class="panel-body">
													<p>
														<h3>  팀 명 : 난닝구 (I'm Link 9th)</h3><br>
													</p>
													<p>
														<h4>- 서장원 #10학번 #팀장 #웹_개발 #시나리오_분석</h4><br>

														<br>
														<h4>- 김태형 #10학번 #웹_개발 #시나리오_분석</h4><br>

														<br>
														<h4>- 허주성 #10학번 #서버 #데이터베이스 #사회관계망분석 #취미는 #자전거</h4><br>
															<img src="http://218.150.181.131/Explain/joo1.jpeg" width="300" height="200">
															<img src="http://218.150.181.131/Explain/joo2.jpeg" width="300" height="200">
														<br>
														<h4>- 이예영 #12학번 #디자인 #자료수집</h4><br>

														<br>
													</p>
												</div>
											</div>
										</div>
										<div class="panel panel-danger">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#accordion2_2">
														2. Link Lab 소개 </a>
												</h4>
											</div>
											<div id="accordion2_2" class="panel-collapse collapse">
												<div class="panel-body">
													<h3>Laboratory of Intelligent Networks at Koreatech </h3> <br>

													“Information is not knowledge. Knowledge is not wisdom.”<br><br>


													<h4>Future Internet</h4><br>
													- Software-defined Networks (SDN)<br>
													- LTE/EPC Core Networks<br>
													- Mobility Management<br><br>


													<h4>Internet of Things</h4><br>
													- Web of Everything<br>
													- Web-scale IT<br>
													- IoT Cloud Platform<br>
													- CoAP Protocol<br><br>

													<h4>Social Network Analysis</h4><br>
													- Node Centrality Analysis<br>
													- Information Diffusion Modeling<br>
													- Movie Charactor Networks<br><br>

													<h4>Big Data Analysis</h4><br>
													- Hadoop and Spark<br>
													- Supervised Learning<br>
													- Unsupervised Learning<br>
													- Classification and Grouping<br><br>

													<a href="http://link.koreatech.ac.kr">http://link.koreatech.ac.kr</a>
												</div>
											</div>
										</div>





									</div>
								</div>
								<div id="tab_3" class="tab-pane">
									<div id="accordion3" class="panel-group">
										<div class="panel panel-danger">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_1">
														1. 사회관계망 분석 기법 관련 정보 </a>
												</h4>
											</div>
											<div id="accordion3_1" class="panel-collapse collapse in">
												<div class="panel-body">
													<p>
														<h4>- Lei Tang and Huan Liu, "Community Detection and Mining in Social Media," Synthesis Lectures on Data Mining and Knowledge Discovery, Vol.2, No.1, 2010.</h4>
													</p><br>
													<p>
													<h4>- 신수진, 김용환, 김찬명, 한연희, "사회관계망에서 매개 중심도 추정을 위한 효율적인 알고리즘," 정보처리학회논문지, Vol.4, No.1, pp.37-44, 2015.</h4>
													</p><br>
													<p>
													<h4>- S Gil, L Kuenzel, S Caroline, “Extraction and Analysis of Character Interaction Networks from Plays and Movies,” Standford, 2011</h4>
													</p><br>
													<p>
													<h4>- Chung-Yi Weng, Wei-Ta Chu, and Ja-Ling Wu, “Rolenet: Movie Analysis from The Perspective of Social Networks,“ IEEE Transactions on Multimedia, vol. 11, No. 2, pp. 256–271, 2009.</h4>
													</p><br>
													<p>
													<h4>- Vincent D. Blondel, Jean-Loup Guillaume, Renaud Lambiotte, Etienne Lefebvre, "Fast unfolding of communities in large networks"</h4>
													</p><br>
												</div>
											</div>
										</div>
										<div class="panel panel-success">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion3" href="#accordion3_2">
														2. 개발 환경 및 개발 툴 </a>
												</h4>
											</div>
											<div id="accordion3_2" class="panel-collapse collapse">
												<div class="panel-body">
													<p>
													<h4>- 개발 언어 </h4>
													  Python, Javascript(Jquery, sigma js), HTML
													</p><br>
													<p>
													<h4>- 개발 툴 </h4>
													  Intelli J, STS, Mysql Workbench, Gephi, SourceTree(GitHub)
													</p><br>
													<p>
													<h4>- 개발 서버 </h4>
													  Synology NAS, AWS(Amazon Web Service), Apache - Tomcat 7
													</p><br>
													<p>
													<h4>- 개발 프레임워크 </h4>
													  Spring 3 MVC
													</p><br>
												</div>
											</div>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT INNER -->
		</div>
	</div>
	<!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN PRE-FOOTER -->
<%@include file="../includes/footMenu.jsp"%>
<div class="scroll-to-top">
	<i class="icon-arrow-up"></i>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="http://218.150.181.131/assets/global/plugins/respond.min.js"></script>
<script src="http://218.150.181.131/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="http://218.150.181.131/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="http://218.150.181.131/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<script src="http://218.150.181.131/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/layout.js" type="text/javascript"></script>
<script src="http://218.150.181.131/assets/admin/layout3/scripts/demo.js" type="text/javascript"></script>
<script>
	jQuery(document).ready(function() {
		Metronic.init(); // init metronic core components
		Layout.init(); // init current layout
		Demo.init(); // init demo features
	});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>