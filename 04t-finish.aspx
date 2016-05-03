<%@ Page Language="C#" AutoEventWireup="true" CodeFile="04t-finish.aspx.cs" Inherits="_04t" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>N次方主页</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


     <script>
         function ShowNo()                        //隐藏两个层 
         {
             document.getElementById("doing").style.display = "none";
             document.getElementById("divLogin").style.display = "none";
         }
         function $(id) {
             return (document.getElementById) ? document.getElementById(id) : document.all[id];
         }
         function showFloat()                    //根据屏幕的大小显示两个层 
         {
             var range = getRange();
             $('doing').style.width = range.width + "px";
             $('doing').style.height = range.height + "px";
             $('doing').style.display = "block";
             document.getElementById("divLogin").style.display = "";
         }
         function getRange()                      //得到屏幕的大小 
         {
             var top = document.body.scrollTop;
             var left = document.body.scrollLeft;
             var height = document.body.clientHeight;
             var width = document.body.clientWidth;

             if (top == 0 && left == 0 && height == 0 && width == 0) {
                 top = document.documentElement.scrollTop;
                 left = document.documentElement.scrollLeft;
                 height = document.documentElement.clientHeight;
                 width = document.documentElement.clientWidth;
             }
             return { top: top, left: left, height: height, width: width };
         }
         var isIe = (document.all) ? true : false;
         //设置select的可见状态
         function setSelectState(state) {
             var objl = document.getElementsByTagName('select');
             for (var i = 0; i < objl.length; i++) {
                 objl[i].style.visibility = state;
             }
         }
         function mousePosition(ev) {
             if (ev.pageX || ev.pageY) {
                 return { x: ev.pageX, y: ev.pageY };
             }
             return {
                 x: ev.clientX + document.body.scrollLeft - document.body.clientLeft, y: ev.clientY + document.body.scrollTop - document.body.clientTop
             };
         }
         //弹出方法
         function showMessageBox(wTitle, content, pos, wWidth) {
             closeWindow();
             var bWidth = parseInt(document.documentElement.scrollWidth);
             var bHeight = parseInt(document.documentElement.scrollHeight);
             if (isIe) {
                 setSelectState('hidden');
             }
             var back = document.createElement("div");
             back.id = "back";
             var styleStr = "top:0px;left:0px;position:absolute;background:#666;width:" + bWidth + "px;height:" + bHeight + "px;";
             styleStr += (isIe) ? "filter:alpha(opacity=0);" : "opacity:0;";
             back.style.cssText = styleStr;
             document.body.appendChild(back);
             showBackground(back, 50);
             var mesW = document.createElement("div");
             mesW.id = "mesWindow";
             mesW.className = "mesWindow";
             mesW.innerHTML = "<div class='mesWindowTop'><table width='100%' height='100%'><tr><td>" + wTitle + "</td><td style='width:1px;'><input type='button' onclick='closeWindow();' title='关闭窗口' class='close' value='关闭' /></td></tr></table></div><div class='mesWindowContent' id='mesWindowContent'>" + content + "</div><div class='mesWindowBottom'></div>";
             styleStr = "left:" + (((pos.x - wWidth) > 0) ? (pos.x - wWidth) : pos.x) + "px;top:" + (pos.y) + "px;position:absolute;width:" + wWidth + "px;";
             mesW.style.cssText = styleStr;
             document.body.appendChild(mesW);
         }
         //让背景渐渐变暗
         function showBackground(obj, endInt) {
             if (isIe) {
                 obj.filters.alpha.opacity += 1;
                 if (obj.filters.alpha.opacity < endInt) {
                     setTimeout(function () { showBackground(obj, endInt) }, 5);
                 }
             } else {
                 var al = parseFloat(obj.style.opacity); al += 0.01;
                 obj.style.opacity = al;
                 if (al < (endInt / 100))
                 { setTimeout(function () { showBackground(obj, endInt) }, 5); }
             }
         }
         //关闭窗口
         function closeWindow() {
             if (document.getElementById('back') != null) {
                 document.getElementById('back').parentNode.removeChild(document.getElementById('back'));
             }
             if (document.getElementById('mesWindow') != null) {
                 document.getElementById('mesWindow').parentNode.removeChild(document.getElementById('mesWindow'));
             }
             if (isIe) {
                 setSelectState('');
             }
         }
         function exist() {
             document.location.href = "04t-finish.aspx";
         }
         //测试弹出
         function testMessageBox(ev) {
             var objPos = mousePosition(ev);
             messContent = "<div style='padding:20px 10px 20px 10px;text-align:center color:white margin-top:5px;'> <div>  <input type='input' class='form-control' id='exampleInputEmail3' placeholder='您的邮箱/手机号' TextMode='Password' > </input> </div>  <div>  <input type='input' class='form-control'style='margin:5px 0px 0px 0px' id='exampleInputPassword3' placeholder='您的密码' TextMode='Password' > </input> </div>  <br/>  <div> &nbsp; &nbsp;<div id='dl'style='text-align:center;margin-top:-20px' > <input id='Button1' type='button' class='btn btn-success btn-mini btn-primary' style='width:50px' value=' 登录 ' onclick='myFunction(),closeWindow()' />     <input id='Button1' type='button' class='btn btn-warning btn-mini btn-primary'style='width:50px margin:0px ' value=' 取 消 ' onclick='closeWindow() ' />  </div> </div>";



             showMessageBox('登录', messContent, objPos, 350);
         }
         function myFunction() {
             document.getElementById("demo").innerHTML = "<div  style='margin:7px 50px 0px 0px'  ><span class='glyphicon glyphicon-globe'  style='color:white '>登录成功，欢迎</span> <input id='Button1' type='button' class='btn btn-danger btn-mini btn-primary'style='width:50px margin:0px ' value=' 退出登录 ' onclick='exist() ' />  </div>";
         }

</script>
    <link href="css/t1.css" rel="stylesheet" />
  </head>
  <body data-spy="scroll" data-target="#myScrollspy">
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
     <div id="myCarousel" class="carousel slide" style="margin-top:50px;">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" ></li>
    <li data-target="#myCarousel" data-slide-to="1"class="active"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item" style="background-image:url(img/text1.jpeg);background-size:100%;height:450px;">
         <h2 class="glyphicon glyphicon-eye-open" style="color:white;margin-left:70px;">日本｜寻觅幽灵公主的脚印</h2>
        <p style="margin-left:110px;color:white;"><span class="day">7</span>/Mar.2016</p>
    </div>
    <div class="item" style="background-image:url(img/text2.jpeg);background-size:100%;height:450px;">
        <h2 class="glyphicon glyphicon-eye-open" style="color:white;margin-left:70px;">台湾｜约好去看隔海相望的她</h2>
        <p style="margin-left:110px;color:white;"><span class="day">12</span>/Mar.2016</p>
    </div>
    <div class="item"style="background-image:url(img/text3.jpeg);background-size:100%;height:450px;">
        <h2 class="glyphicon glyphicon-eye-open" style="color:white;margin-left:70px;">北极｜以极光的名义驶入挪威的冬季</h2>
        <p style="margin-left:110px;color:white;"><span class="day">11</span>/Mar.2016</p>
    </div>
  </div>
  <!-- Carousel nav -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>


</div>
<div id="middle" class="container">
	<div class="container-fluid" id="LG">
	<div class="row-fluid">
		<div class="span3">
            <div class="col-xs-3" id="myScrollspy">
            <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="450">
                <li class="active"><a href="#section-1">第一部分</a></li>
                <li><a href="#section-2">第二部分</a></li>
                <li><a href="#section-3">第三部分</a></li>
                <li><a href="#section-4">第四部分</a></li>
                <li><a href="#section-5">第五部分</a></li>
            </ul>
        </div>
		</div>
		<div class="span9">
            <div class="col-xs-9">
                <div>
   
                <div class="row" id="section-1">
  <div class="col-sm-9 col-md-12">
    <div class="thumbnail">
      <img src="img/z4.jpeg" alt="..." style="width:800px;height:550px;"/>
      <div class="caption">
        <h3>Thumbnail label</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
</div>
                    <div class="row" >
  <div class="col-sm-6 col-md-12">
    <div class="thumbnail">
      <img src="img/z2.jpeg" alt="..." style="width:800px;height:550px;"/>
      <div class="caption">
        <h3>Thumbnail label</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
</div>
                    <div class="row">
  <div class="col-sm-6 col-md-12">
    <div class="thumbnail">
      <img src="img/z3.jpeg" alt="..." style="width:800px;height:550px;"/>
      <div class="caption">
        <h3>Thumbnail label</h3>
        <p>...</p>
        <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
      </div>
    </div>
  </div>
</div>
                
     </div>  
      
            <h2 ><br /></h2>
            <h1>第一部分</h1>
                <p>01</p>
            <p>1</p>
            <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
            <hr/>
            <h2 id="section-2"><br /> </h2>
                   <h1>第2部分</h1>
             <br  <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
            <hr/>
            <h2 id="section-3"><br /> </h2>
                   <h1>第3部分</h1>
            <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
            <hr/>
            <h2 id="section-4"><br /></h2>
                   <h1>第4部分</h1>
          <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
            <hr/>
            <h2 id="section-5"><br /> </h2>
                   <h1>第5部分</h1>
            <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
        </div>
		</div>
	</div>
</div>
   
</div>










      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
