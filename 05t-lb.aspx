<%@ Page Language="C#" AutoEventWireup="true" CodeFile="05t-lb.aspx.cs" Inherits="_05t_lb" %>

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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" ></li>
    <li data-target="#myCarousel" data-slide-to="1"class="active"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item"><img src="img/text1.jpeg"alt=""/></div>
    <div class="item"><img src="img/text2.jpeg" alt=""/></div>
    <div class="item"><img src="img/text3.jpeg" alt=""/></div>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>
      
      
      <div class="bs-docs-example">
              <div id="myCarousel1" class="carousel slide">
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                  <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            
                </ol>
                <div class="carousel-inner">
                  <div class="item">
                    <img src="img/text1.jpeg"alt=""/>
                    <div class="carousel-caption">
                         <h2 class="glyphicon glyphicon-eye-open" style="color:white;margin-left:70px;">日本｜寻觅幽灵公主的脚印</h2>
        <p style="margin-left:110px;color:white;"><span class="day">7</span>/Mar.2016</p>
                    </div>
                  </div>
                  <div class="item active">
                    <img src="img/text2.jpeg" alt=""/>
                    <div class="carousel-caption">
                     
                    </div>
                  </div>
                  <div class="item">
                    <img src="img/text3.jpeg" alt=""/>
                    <div class="carousel-caption">
                     
                    </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
              </div>
            </div>
      
      
      
      
      
      
      <div id="myCarousel1" class="carousel slide">
   <!-- 轮播（Carousel）指标 -->
   <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
   </ol>   
   <!-- 轮播（Carousel）项目 -->
   <div class="carousel-inner">
      <div class="item active">
         <img src="/wp-content/uploads/2014/07/slide1.png" alt="First slide">
      </div>
      <div class="item">
         <img src="/wp-content/uploads/2014/07/slide2.png" alt="Second slide">
      </div>
      <div class="item">
         <img src="/wp-content/uploads/2014/07/slide3.png" alt="Third slide">
      </div>
   </div>
   <!-- 轮播（Carousel）导航 -->
   <a class="carousel-control left" href="#myCarousel" 
      data-slide="prev">&lsaquo;</a>
   <a class="carousel-control right" href="#myCarousel" 
      data-slide="next">&rsaquo;</a>
</div> 
      
      
      
      
      
      
      
      
      
      
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
