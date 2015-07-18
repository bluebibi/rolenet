<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- BEGIN HEADER MENU -->


<!-- BEGIN HEADER -->
<div class="page-header">
    <!-- BEGIN HEADER TOP -->
    <div class="page-header-top">
        <div class="container">
            <!-- BEGIN LOGO -->
            <div class="page-logo">
                <a href="/"><img src="http://218.150.181.131/assets/img/logo-default2.png" alt="logo" class="logo-default"></a>
            </div>
            <!-- END LOGO -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler"></a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->

        </div>
    </div>
    <!-- END HEADER TOP -->

    <!-- BEGIN HEADER MENU -->
    <div class="page-header-menu">
        <div class="container">
            <!-- BEGIN MEGA MENU -->
            <!-- DOC: Apply "hor-menu-light" class after the "hor-menu" class below to have a horizontal menu with white background -->
            <!-- DOC: Remove data-hover="dropdown" and data-close-others="true" attributes below to disable the dropdown opening on mouse hover -->
            <div class="hor-menu ">
                <ul class="nav navbar-nav">
                    <li class="active">
                        <a href="/">홈</a>
                    </li>
                    <li class="menu-dropdown mega-menu-dropdown ">
                        <a data-hover="megamenu-dropdown" data-close-others="true" data-toggle="dropdown" href="javascript:;" class="dropdown-toggle">
                            영화 <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu" style="min-width: 710px">
                            <li>
                                <div class="mega-menu-content">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>:: 영화 ::</h3>
                                                </li>
                                                <li>
                                                    <a href="/Tab_movielist" class="iconify">
                                                        <i class="icon-home"></i>
                                                        영화 목록 </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-md-4">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>:: 감독 ::</h3>
                                                </li>
                                                <li>
                                                    <a href="/Tab_Director" class="iconify">
                                                        <i class="icon-speech"></i>
                                                        감독 목록</a>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="col-md-4">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>:: 분석 ::</h3>
                                                </li>
                                                <li>
                                                    <a href="/Tab_charts?flag=0&flag2=0" class="iconify">
                                                        <i class="icon-speech"></i>
                                                        차트</a>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="col-md-4">
                                            <ul class="mega-menu-submenu">
                                                <li>
                                                    <h3>나의 영화</h3>
                                                </li>
                                                <li>
                                                    <a href="/upload.do" class="iconify">
                                                        <i class="icon-speech"></i>
                                                        업로드</a>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>

                    <!--<li>
                        <a href="/Tab_boardlist">Board </a>
                    </li>

                    <li>
                        <a href="/Tab_mypage">MyPage</a>
                    </li>-->
                    <li>
                        <a href="/Tab_about">더보기</a>
                    </li>
                </ul>

            </div>
        </div>
        <!-- END HEADER MENU -->
    </div>
    <!-- END HEADER -->
</div>




