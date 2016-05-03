<%@ Page Language="C#" AutoEventWireup="true" CodeFile="06t.aspx.cs" Inherits="_06t" %>

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
  
      <div class="container-fluid" >

    
          <div class="row" style="background-image:url(img/1.jpg);background-size:100% 100%;height:650px;">
  <div class="col-xs-6 col-md-3" style="position:absolute;top:17%;left:33%;height:300px;">
      <img src="img/log.png" alt="..." z-index:-1; style="width:90px;height:75px;margin-left:140px;margin-bottom:40px;"/>
    <div  class="thumbnail" style="width:400px"><a href="#"></a>
        
        <div class="input-group" style="margin-bottom:10px;">
           
  <span class="input-group-addon" id="sizing-addon1">@</span>
  <input type="text" class="form-control" placeholder="用户名/邮箱" aria-describedby="sizing-addon2"/></div>
                 <div class="input-group"style="margin-bottom:10px;"> <span class="input-group-addon" id="sizing-addon2">@</span>
  <input type="text" class="form-control" placeholder="请输入至少6位密码" aria-describedby="sizing-addon2"/></div>
                  <div class="input-group"style="margin-bottom:10px;"><span class="input-group-addon" id="sizing-addon3">@</span>
  <input type="text" class="form-control" placeholder="手机号" aria-describedby="sizing-addon2"/></div>
                 <div class="input-group"style="margin-bottom:10px;margin-left:5px;float:right;width:inherit;"> 
                     <select class="span3" style="width:95%;margin-left:10px;">
                     <option>男</option>
                    <option>女</option>
                     <option>保密</option>
                        </select></div>
                  <div class="input-group"style="margin-bottom:10px;"><span class="input-group-addon" id="sizing-addon5">@</span>
  <input type="text" class="form-control" placeholder="昵称" aria-describedby="sizing-addon2"/>

            <div class="btn-group" role="group" aria-label="...">
  
</div>
</div>
 <span style="float:right;">注册视为同意《N次方用户使用协议》</span><br />
   <div class="progress">
  <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 45%">
    <span class="sr-only">45% Complete</span>
  </div>
</div>
   <button type="button" class="btn btn-info" style="width:100px;">注册</button>
      <button type="button" class="btn btn-warning" style="width:100px;float:right;">重置</button>

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
