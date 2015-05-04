<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="/js/sigmajs/jquery-2.1.1.min.js"></script>
<!-- START SIGMA IMPORTS -->
<script src="http://218.150.181.131/sigma.js-1.0.3/src/sigma.core.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/conrad.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/utils/sigma.utils.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/utils/sigma.polyfills.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/sigma.settings.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.dispatcher.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.configurable.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.graph.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.camera.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/classes/sigma.classes.quad.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/captors/sigma.captors.mouse.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/captors/sigma.captors.touch.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/sigma.renderers.canvas.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/sigma.renderers.webgl.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/sigma.renderers.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.nodes.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.nodes.fast.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.edges.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.edges.fast.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/webgl/sigma.webgl.edges.arrow.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.labels.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.hovers.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.nodes.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.edges.def.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.edges.curve.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.edges.arrow.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/renderers/canvas/sigma.canvas.edges.curvedArrow.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/middlewares/sigma.middlewares.rescale.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/middlewares/sigma.middlewares.copy.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/misc/sigma.misc.animation.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/misc/sigma.misc.bindEvents.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/src/misc/sigma.misc.drawHovers.js"></script>
<!-- END SIGMA IMPORTS -->
<script src="http://218.150.181.131/sigma.js-1.0.3/plugins/sigma.parsers.gexf/gexf-parser.js"></script>
<script src="http://218.150.181.131/sigma.js-1.0.3/plugins/sigma.parsers.gexf/sigma.parsers.gexf.js"></script>

<div class="row margin-top-10">
  <div class="col-md-6 col-sm-12">
    <!-- BEGIN PORTLET-->
    <div class="portlet light ">
      <div class="portlet-title">
        <div class="caption caption-md">
          <span class="glyphicon glyphicon-hand-up"></span>
          <i class="icon-bar-chart theme-font hide"></i> <span
                class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
        </div>
        <div class="actions">
          <div class="btn-group btn-group-devided" data-toggle="buttons">
            <label
                    class="btn btn-transparent grey-salsa btn-circle btn-sm active">
              <input type="radio" name="options" class="toggle"
                     id="option1">Today
            </label><!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
          </div>
        </div>
      </div>
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
    </div>

  </div>
  <ul class="list-separated list-inline-xs hide">
    <li>
      <div class="font-grey-mint font-sm">Total Sales</div>
      <div class="uppercase font-hg font-red-flamingo">
        13,760 <span class="font-lg font-grey-mint">$</span>
      </div>
    </li>
    <li></li>
    <li class="border">
      <div class="font-grey-mint font-sm">Revenue</div>
      <div class="uppercase font-hg theme-font">
        4,760 <span class="font-lg font-grey-mint">$</span>
      </div>
    </li>
    <li class="divider"></li>
    <li>
      <div class="font-grey-mint font-sm">Expenses</div>
      <div class="uppercase font-hg font-purple">
        11,760 <span class="font-lg font-grey-mint">$</span>
      </div>
    </li>
    <li class="divider"></li>
    <li>
      <div class="font-grey-mint font-sm">Growth</div>
      <div class="uppercase font-hg font-blue-sharp">
        9,760 <span class="font-lg font-grey-mint">$</span>
      </div>
    </li>
  </ul>
  <div style="height: 260px">
    <!-- 자리자리자리-->
    <!-- BEGIN GRAPH -->
    <div id="container_jang"></div>

    <!-- END GRAPH -->
  </div>
</div>
    </div>
    <!-- END PORTLET-->
  </div>

<!-- second -->
  <div class="row margin-top-10">
    <div class="col-md-6 col-sm-12">
      <!-- BEGIN PORTLET-->
      <div class="portlet light ">
        <div class="portlet-title">
          <div class="caption caption-md">
            <span class="glyphicon glyphicon-hand-up"></span>
            <i class="icon-bar-chart theme-font hide"></i> <span
                  class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
          </div>
          <div class="actions">
            <div class="btn-group btn-group-devided" data-toggle="buttons">
              <label
                      class="btn btn-transparent grey-salsa btn-circle btn-sm active">
                <input type="radio" name="options" class="toggle"
                       id="option1">Today
              </label><!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
            </div>
          </div>
        </div>
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
            </div>

          </div>
          <ul class="list-separated list-inline-xs hide">
            <li>
              <div class="font-grey-mint font-sm">Total Sales</div>
              <div class="uppercase font-hg font-red-flamingo">
                13,760 <span class="font-lg font-grey-mint">$</span>
              </div>
            </li>
            <li></li>
            <li class="border">
              <div class="font-grey-mint font-sm">Revenue</div>
              <div class="uppercase font-hg theme-font">
                4,760 <span class="font-lg font-grey-mint">$</span>
              </div>
            </li>
            <li class="divider"></li>
            <li>
              <div class="font-grey-mint font-sm">Expenses</div>
              <div class="uppercase font-hg font-purple">
                11,760 <span class="font-lg font-grey-mint">$</span>
              </div>
            </li>
            <li class="divider"></li>
            <li>
              <div class="font-grey-mint font-sm">Growth</div>
              <div class="uppercase font-hg font-blue-sharp">
                9,760 <span class="font-lg font-grey-mint">$</span>
              </div>
            </li>
          </ul>
          <div style="height: 260px">
            <!-- 자리자리자리-->
            <!-- BEGIN GRAPH -->
            <div id="container_jang"></div>

            <!-- END GRAPH -->
          </div>
        </div>
      </div>
      <!-- END PORTLET-->
    </div>

    <!-- thrid-->
    <div class="row margin-top-10">
      <div class="col-md-6 col-sm-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet light ">
          <div class="portlet-title">
            <div class="caption caption-md">
              <span class="glyphicon glyphicon-hand-up"></span>
              <i class="icon-bar-chart theme-font hide"></i> <span
                    class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
            </div>
            <div class="actions">
              <div class="btn-group btn-group-devided" data-toggle="buttons">
                <label
                        class="btn btn-transparent grey-salsa btn-circle btn-sm active">
                  <input type="radio" name="options" class="toggle"
                         id="option1">Today
                </label><!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
              </div>
            </div>
          </div>
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
              </div>

            </div>
            <ul class="list-separated list-inline-xs hide">
              <li>
                <div class="font-grey-mint font-sm">Total Sales</div>
                <div class="uppercase font-hg font-red-flamingo">
                  13,760 <span class="font-lg font-grey-mint">$</span>
                </div>
              </li>
              <li></li>
              <li class="border">
                <div class="font-grey-mint font-sm">Revenue</div>
                <div class="uppercase font-hg theme-font">
                  4,760 <span class="font-lg font-grey-mint">$</span>
                </div>
              </li>
              <li class="divider"></li>
              <li>
                <div class="font-grey-mint font-sm">Expenses</div>
                <div class="uppercase font-hg font-purple">
                  11,760 <span class="font-lg font-grey-mint">$</span>
                </div>
              </li>
              <li class="divider"></li>
              <li>
                <div class="font-grey-mint font-sm">Growth</div>
                <div class="uppercase font-hg font-blue-sharp">
                  9,760 <span class="font-lg font-grey-mint">$</span>
                </div>
              </li>
            </ul>
            <div style="height: 260px">
              <!-- 자리자리자리-->
              <!-- BEGIN GRAPH -->
              <div id="container_jang"></div>

              <!-- END GRAPH -->
            </div>
          </div>
        </div>
        <!-- END PORTLET-->
      </div>

      <!--four-->
      <div class="row margin-top-10">
        <div class="col-md-6 col-sm-12">
          <!-- BEGIN PORTLET-->
          <div class="portlet light ">
            <div class="portlet-title">
              <div class="caption caption-md">
                <span class="glyphicon glyphicon-hand-up"></span>
                <i class="icon-bar-chart theme-font hide"></i> <span
                      class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
              </div>
              <div class="actions">
                <div class="btn-group btn-group-devided" data-toggle="buttons">
                  <label
                          class="btn btn-transparent grey-salsa btn-circle btn-sm active">
                    <input type="radio" name="options" class="toggle"
                           id="option1">Today
                  </label><!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
                </div>
              </div>
            </div>
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
                </div>

              </div>
              <ul class="list-separated list-inline-xs hide">
                <li>
                  <div class="font-grey-mint font-sm">Total Sales</div>
                  <div class="uppercase font-hg font-red-flamingo">
                    13,760 <span class="font-lg font-grey-mint">$</span>
                  </div>
                </li>
                <li></li>
                <li class="border">
                  <div class="font-grey-mint font-sm">Revenue</div>
                  <div class="uppercase font-hg theme-font">
                    4,760 <span class="font-lg font-grey-mint">$</span>
                  </div>
                </li>
                <li class="divider"></li>
                <li>
                  <div class="font-grey-mint font-sm">Expenses</div>
                  <div class="uppercase font-hg font-purple">
                    11,760 <span class="font-lg font-grey-mint">$</span>
                  </div>
                </li>
                <li class="divider"></li>
                <li>
                  <div class="font-grey-mint font-sm">Growth</div>
                  <div class="uppercase font-hg font-blue-sharp">
                    9,760 <span class="font-lg font-grey-mint">$</span>
                  </div>
                </li>
              </ul>
              <div style="height: 260px">
                <!-- 자리자리자리-->
                <!-- BEGIN GRAPH -->
                <div id="container_jang"></div>


                <!-- END GRAPH -->
              </div>
            </div>
          </div>
          <!-- END PORTLET-->
        </div>


        <!--5-->
        <div class="row margin-top-10">
          <div class="col-md-6 col-sm-12">
            <!-- BEGIN PORTLET-->
            <div class="portlet light ">
              <div class="portlet-title">
                <div class="caption caption-md">
                  <span class="glyphicon glyphicon-hand-up"></span>
                  <i class="icon-bar-chart theme-font hide"></i> <span
                        class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
                </div>
                <div class="actions">
                  <div class="btn-group btn-group-devided" data-toggle="buttons">
                    <label
                            class="btn btn-transparent grey-salsa btn-circle btn-sm active">
                      <input type="radio" name="options" class="toggle"
                             id="option1">Today
                    </label><!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
                  </div>
                </div>
              </div>
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
                  </div>

                </div>
                <ul class="list-separated list-inline-xs hide">
                  <li>
                    <div class="font-grey-mint font-sm">Total Sales</div>
                    <div class="uppercase font-hg font-red-flamingo">
                      13,760 <span class="font-lg font-grey-mint">$</span>
                    </div>
                  </li>
                  <li></li>
                  <li class="border">
                    <div class="font-grey-mint font-sm">Revenue</div>
                    <div class="uppercase font-hg theme-font">
                      4,760 <span class="font-lg font-grey-mint">$</span>
                    </div>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <div class="font-grey-mint font-sm">Expenses</div>
                    <div class="uppercase font-hg font-purple">
                      11,760 <span class="font-lg font-grey-mint">$</span>
                    </div>
                  </li>
                  <li class="divider"></li>
                  <li>
                    <div class="font-grey-mint font-sm">Growth</div>
                    <div class="uppercase font-hg font-blue-sharp">
                      9,760 <span class="font-lg font-grey-mint">$</span>
                    </div>
                  </li>
                </ul>
                <div style="height: 260px">
                  <!-- 자리자리자리-->
                  <!-- BEGIN GRAPH -->
                  <div id="container_jang"></div>

                  <!-- END GRAPH -->
                </div>
              </div>
            </div>
            <!-- END PORTLET-->
          </div>


          <!--6-->
          <div class="row margin-top-10">
            <div class="col-md-6 col-sm-12">
              <!-- BEGIN PORTLET-->
              <div class="portlet light ">
                <div class="portlet-title">
                  <div class="caption caption-md">
                    <span class="glyphicon glyphicon-hand-up"></span>
                    <i class="icon-bar-chart theme-font hide"></i> <span
                          class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
                  </div>
                  <div class="actions">
                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                      <label
                              class="btn btn-transparent grey-salsa btn-circle btn-sm active">
                        <input type="radio" name="options" class="toggle"
                               id="option1">Today
                      </label><!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
                    </div>
                  </div>
                </div>
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
                    </div>

                  </div>
                  <ul class="list-separated list-inline-xs hide">
                    <li>
                      <div class="font-grey-mint font-sm">Total Sales</div>
                      <div class="uppercase font-hg font-red-flamingo">
                        13,760 <span class="font-lg font-grey-mint">$</span>
                      </div>
                    </li>
                    <li></li>
                    <li class="border">
                      <div class="font-grey-mint font-sm">Revenue</div>
                      <div class="uppercase font-hg theme-font">
                        4,760 <span class="font-lg font-grey-mint">$</span>
                      </div>
                    </li>
                    <li class="divider"></li>
                    <li>
                      <div class="font-grey-mint font-sm">Expenses</div>
                      <div class="uppercase font-hg font-purple">
                        11,760 <span class="font-lg font-grey-mint">$</span>
                      </div>
                    </li>
                    <li class="divider"></li>
                    <li>
                      <div class="font-grey-mint font-sm">Growth</div>
                      <div class="uppercase font-hg font-blue-sharp">
                        9,760 <span class="font-lg font-grey-mint">$</span>
                      </div>
                    </li>
                  </ul>
                  <div style="height: 260px">
                    <!-- 자리자리자리-->
                    <!-- BEGIN GRAPH -->
                    <div id="container_jang"></div>

                    <!-- END GRAPH -->
                  </div>
                </div>
              </div>
              <!-- END PORTLET-->
            </div>

            <!--7-->
            <div class="row margin-top-10">
              <div class="col-md-6 col-sm-12">
                <!-- BEGIN PORTLET-->
                <div class="portlet light ">
                  <div class="portlet-title">
                    <div class="caption caption-md">
                      <span class="glyphicon glyphicon-hand-up"></span>
                      <i class="icon-bar-chart theme-font hide"></i> <span
                            class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
                    </div>
                    <div class="actions">
                      <div class="btn-group btn-group-devided" data-toggle="buttons">
                        <label
                                class="btn btn-transparent grey-salsa btn-circle btn-sm active">
                          <input type="radio" name="options" class="toggle"
                                 id="option1">Today
                        </label><!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
                      </div>
                    </div>
                  </div>
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
                      </div>

                    </div>
                    <ul class="list-separated list-inline-xs hide">
                      <li>
                        <div class="font-grey-mint font-sm">Total Sales</div>
                        <div class="uppercase font-hg font-red-flamingo">
                          13,760 <span class="font-lg font-grey-mint">$</span>
                        </div>
                      </li>
                      <li></li>
                      <li class="border">
                        <div class="font-grey-mint font-sm">Revenue</div>
                        <div class="uppercase font-hg theme-font">
                          4,760 <span class="font-lg font-grey-mint">$</span>
                        </div>
                      </li>
                      <li class="divider"></li>
                      <li>
                        <div class="font-grey-mint font-sm">Expenses</div>
                        <div class="uppercase font-hg font-purple">
                          11,760 <span class="font-lg font-grey-mint">$</span>
                        </div>
                      </li>
                      <li class="divider"></li>
                      <li>
                        <div class="font-grey-mint font-sm">Growth</div>
                        <div class="uppercase font-hg font-blue-sharp">
                          9,760 <span class="font-lg font-grey-mint">$</span>
                        </div>
                      </li>
                    </ul>
                    <div style="height: 260px">
                      <!-- 자리자리자리-->
                      <!-- BEGIN GRAPH -->
                      <div id="container_jang"></div>

                      <!-- END GRAPH -->
                    </div>
                  </div>
                </div>
                <!-- END PORTLET-->
              </div>


              <!--8-->
              <div class="row margin-top-10">
                <div class="col-md-6 col-sm-12">
                  <!-- BEGIN PORTLET-->
                  <div class="portlet light ">
                    <div class="portlet-title">
                      <div class="caption caption-md">
                        <span class="glyphicon glyphicon-hand-up"></span>
                        <i class="icon-bar-chart theme-font hide"></i> <span
                              class="caption-subject theme-font bold uppercase">MOST
											RECOMMENDATION MOVIE</span> <span class="caption-helper hide">weekly
											stats...</span>
                      </div>
                      <div class="actions">
                        <div class="btn-group btn-group-devided" data-toggle="buttons">
                          <label
                                  class="btn btn-transparent grey-salsa btn-circle btn-sm active">
                            <input type="radio" name="options" class="toggle"
                                   id="option1">Today
                          </label><!--  <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Week
											</label> <label
												class="btn btn-transparent grey-salsa btn-circle btn-sm">
												<input type="radio" name="options" class="toggle"
												id="option2">Month
											</label> -->
                        </div>
                      </div>
                    </div>
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
                        </div>

                      </div>
                      <ul class="list-separated list-inline-xs hide">
                        <li>
                          <div class="font-grey-mint font-sm">Total Sales</div>
                          <div class="uppercase font-hg font-red-flamingo">
                            13,760 <span class="font-lg font-grey-mint">$</span>
                          </div>
                        </li>
                        <li></li>
                        <li class="border">
                          <div class="font-grey-mint font-sm">Revenue</div>
                          <div class="uppercase font-hg theme-font">
                            4,760 <span class="font-lg font-grey-mint">$</span>
                          </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                          <div class="font-grey-mint font-sm">Expenses</div>
                          <div class="uppercase font-hg font-purple">
                            11,760 <span class="font-lg font-grey-mint">$</span>
                          </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                          <div class="font-grey-mint font-sm">Growth</div>
                          <div class="uppercase font-hg font-blue-sharp">
                            9,760 <span class="font-lg font-grey-mint">$</span>
                          </div>
                        </li>
                      </ul>
                      <div style="height: 260px">
                        <!-- 자리자리자리-->
                        <!-- BEGIN GRAPH -->
                        <div id="container_jang"></div>

                        <!-- END GRAPH -->
                      </div>
                    </div>
                  </div>
                  <!-- END PORTLET-->
                </div>
