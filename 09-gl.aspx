<%@ Page Language="C#" AutoEventWireup="true" CodeFile="09-gl.aspx.cs" Inherits="_09_gl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    
      <style type="text/css">
        .bs-docs-sidenav.affix {
            top: 40px;
        }

        /*  >表示第一个子元素  */
        .bs-docs-sidenav > li:first-child > a {
            -webkit-border-radius: 6px 6px 0 0;
            -moz-border-radius: 6px 6px 0 0;
            border-radius: 6px 6px 0 0;
        }

        .bs-docs-sidenav > li > a {
            display: block;
            width: 190px \9;
            margin: 0 0 -1px;
            padding: 8px 14px;
            border: 1px solid #e5e5e5;
        }

        .bs-docs-sidenav {
            width: 228px;
            margin: 30px 0 0;
            padding: 0;
            background-color: #fff;
            -webkit-border-radius: 6px;
            -moz-border-radius: 6px;
            border-radius: 6px;
            -webkit-box-shadow: 0 1px 4px rgba(0,0,0,.065);
            -moz-box-shadow: 0 1px 4px rgba(0,0,0,.065);
            box-shadow: 0 1px 4px rgba(0,0,0,.065);
        }

            .bs-docs-sidenav .icon-chevron-right {
                float: right;
                margin-top: 2px;
                margin-right: -6px;
                opacity: .25;
            }
             .bs-docs-sidenav .icon-chevron-right.li {
                float: right;
                margin-top: 2px;
                margin-right: -6px;
                opacity: .25;
            }
          .li-ul {
              ul{float:left; width:450px;height:auto;border:1px solid #000;}
                li{float:left; border:1px solid #000;}
          }
    </style>

     <link href="css/jquery.slideBox.css" rel="stylesheet" />
     <script src="css/jquery.min.js"></script>
     <script src="css/jquery.slideBox.min.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  
     <div id="top">
<nav class="navbar navbar-default navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="btn btn-inverse navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only" ></span>
        <span class="icon-bar" style="" ></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Dimension N</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav ">
        <li class="active"><a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">主页 <span class="sr-only">(current)</span></a></li>
        <li><a href="#">目的地
            </a></li>
          <li><a href="#">旅游攻略
            </a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">自由行 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">周边游览</a></li>
            <li><a href="#">旅行分享</a></li>
            <li><a href="#">酒店</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">结伴游</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">跟团游</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="搜目的地/酒店/攻略"/>
        </div>
        <button type="submit" class="btn btn-default" style="width:auto" ><span class="glyphicon glyphicon-search"></span>查找</button>
      </form>
      <ul class="nav navbar-nav navbar-right" id ="demo">
        <li><a href="#" onclick="testMessageBox(event);">登陆 </a></li>
           <li><a href="#">注册</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">加入我们 <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    

      <%--<div class="jumbotron" style="background-image:url(/img/text1.jpeg);repeat:fixed!important; margin-top:50px;height:450px;">
  
       
          <h2 class="glyphicon glyphicon-eye-open" style="color:white;margin-left:70px;">日本｜寻觅幽灵公主的脚印</h2>
        <p style="margin-left:110px;color:white;"><span class="day">7</span>/Mar.2016</p>
</div>--%>
     


</div>

      
      <div style="margin-top:80px;margin-left:170px;"> 
          <ul class="nav nav-list bs-docs-sidenav affix-top">
        <li class="active">
            <a href="#overview"><i class="icon-chevron-right"></i> 海外春季目的地精选</a>
            <ul>
                <li class="hidden" style="float:right;">1</li>
                <li class="show">1</li>
                
            </ul>
        </li>
        <li class="">
            <a href="#transitions"><i class="icon-chevron-right"></i> 国内春季目的地推荐</a>
        </li>
        <li class="">
            <a href="#modals"><i class="icon-chevron-right"></i> 奔向海岛</a>
        </li>
        <li class="">
            <a href="#dropdowns"><i class="icon-chevron-right"></i> 主题推荐</a>
        </li>
      
     
    </ul>

    <script type="text/javascript">
        $(function () {
            $('.nav li').click(function (e) {
                $('.nav li').removeClass('active');
                //$(e.target).addClass('active');
                $(this).addClass('active');
            });
        });

    </script>
      
          <div style="width:700px;height:300px;position:absolute;left:450px;top:80px;">
              <div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item"><img src="img/l1.jpeg" style="height:340px;width:800px;"/></div>
    <div class="item"><img src="img/l2.jpeg" style="height:340px;width:800px;" /></div>
    <div class="item"><img src="img/l3.jpeg" style="height:340px;width:800px;"/></div>
       <div class="item"><img src="img/l4.jpeg" style="height:340px;width:800px;"/></div>
       <div class="item"><img src="img/l5.png" style="height:340px;width:800px;"/></div>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>
          </div>
</div>

      <img src="img/henglan.jpeg" style="height:163px;width:270px;margin-left:170px;margin-top:10px;" />
      <div id="down" style="width:100%;float:left;">
          <div class="">
    <h3 style="margin-left:150px;margin-right:150px;"><a href="/gonglve/mdd-cn-0-0-1.html#list">国内攻略</a></h3>
    <ol style="float:left;margin-left:150px;margin-right:160px;">
             <li style="float:left;margin-left:20px; "><a href="/gonglve/mdd-yn-0-0-1.html#list">云南(26)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-sc-0-0-1.html#list">四川(22)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-js-0-0-1.html#list">江苏(20)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-zj-0-0-1.html#list">浙江(19)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-bj-0-0-1.html#list">北京(18)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-gd-0-0-1.html#list">广东(16)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-heb-0-0-1.html#list">河北(16)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-tw-0-0-1.html#list">台湾(16)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-nm-0-0-1.html#list">内蒙古(13)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-gz-0-0-1.html#list">贵州(12)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-sd-0-0-1.html#list">山东(12)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-xz-0-0-1.html#list">西藏(12)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-gx-0-0-1.html#list">广西(11)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-qh-0-0-1.html#list">青海(11)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-hn-0-0-1.html#list">河南(10)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-jx-0-0-1.html#list">江西(10)</a></li>
             <li style="float:left;margin-left:20px;"><a href="/gonglve/mdd-ah-0-0-1.html#list">安徽(9)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-fj-0-0-1.html#list">福建(9)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-jl-0-0-1.html#list">吉林(9)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-xj-0-0-1.html#list">新疆(9)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-hainan-0-0-1.html#list">海南(8)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-hlj-0-0-1.html#list">黑龙江(8)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-s1x-0-0-1.html#list">山西(8)</a></li>
             <li style="float:left;margin-left:22x;"><a href="/gonglve/mdd-s3x-0-0-1.html#list">陕西(8)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-hub-0-0-1.html#list">湖北(7)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-gs-0-0-1.html#list">甘肃(6)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-hunan-0-0-1.html#list">湖南(6)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-ln-0-0-1.html#list">辽宁(6)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-sh-0-0-1.html#list">上海(3)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-hk-0-0-1.html#list">香港(3)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-cq-0-0-1.html#list">重庆(3)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-mc-0-0-1.html#list">澳门(2)</a></li>
             <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-nx-0-0-1.html#list">宁夏(2)</a></li>
            <li style="float:left;margin-left:22px;"><a href="/gonglve/mdd-tj-0-0-1.html#list">天津(2)</a></li>
        </ol>
   
</div>




      </div>

      <div class="bs-example bs-example-tabs" data-example-id="togglable-tabs" style="margin-left:170px;margin-right:170px;">
    <ul id="myTabs" class="nav nav-tabs" role="tablist">
      <li role="presentation" class=""><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="false">Home</a></li>
      <li class="active" role="presentation"><a aria-expanded="true" href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">Profile</a></li>
      <li role="presentation" class="dropdown">
        <a aria-expanded="false" href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">Dropdown <span class="caret"></span></a>
        <ul class="dropdown-menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
          <li><a href="#dropdown1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">@fat</a></li>
          <li><a href="#dropdown2" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">@mdo</a></li>
        </ul>
      </li>
    </ul>
    <div id="myTabContent" class="tab-content">
      <div role="tabpanel" class="tab-pane fade" id="dropdown3" aria-labelledby="home-tab">
        <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
      </div>
      <div role="tabpanel" class="tab-pane fade active in" id="dropdown4" aria-labelledby="profile-tab">
        <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
      </div>
      <div role="tabpanel" class="tab-pane fade" id="dropdown1" aria-labelledby="dropdown1-tab">
        <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
      </div>
      <div role="tabpanel" class="tab-pane fade" id="dropdown2" aria-labelledby="dropdown2-tab">
        <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
      </div>
    </div>
  </div>

      






      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body></html>
