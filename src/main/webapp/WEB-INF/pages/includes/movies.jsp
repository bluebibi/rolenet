<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="row margin-top-10">
  <div class="col-md-6 col-sm-12">
    <!-- BEGIN PORTLET-->
    <div class="portlet light ">
       <div class="portlet-body">
        <div class="row list-separated">
          <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="font-grey-mint font-sm">Movie Name</div>
            <div class="uppercase font-hg font-red-flamingo">
              ${hit.name} <span class="font-lg font-grey-mint"></span>
            </div>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="font-grey-mint font-sm">Year</div>
            <div class="uppercase font-hg theme-font">
              ${hit.year} <span class="font-lg font-grey-mint"></span>
            </div>
          </div>
          <div class="col-md-3 col-sm-3 col-xs-6">
            <div class="font-grey-mint font-sm">Director</div>
            <div class="uppercase font-hg font-purple">
              ${hit.director} <span class="font-lg font-grey-mint"></span>
            </div>
            <br>
          </div>
          <div align="center"> <img src="http://218.150.181.131/poster/1p.png" width="250" height="300">
          </div>
        </div>
         ${hit.synopsis}
      </div>
    </div>
</div>


