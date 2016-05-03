<%@ Page Language="C#" AutoEventWireup="true" CodeFile="04t-tanchuangtiaoshi.aspx.cs" Inherits="_04t_tanchuangtiaoshi" %>

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
    <script>
        $('body').off('.data-api')
        $('body').off('.alert.data-api')
        $(".btn.danger").button("toggle").addClass("fat")
        $("#myModal").modal()                       // initialized with defaults
        $("#myModal").modal({ keyboard: false })   // initialized with no keyboard
        $("#myModal").modal('show')                // initializes and invokes show immediately
        var bootstrapButton = $.fn.button.noConflict() // return $.fn.button to previously assigned value
        $.fn.bootstrapBtn = bootstrapButton            // give $().bootstrapBtn the bootstrap functionality
        $('#myModal').on('show', function (e) {
            if (!data) return e.preventDefault() // stops modal from being shown
        })
    </script>
  </head>
  <body data-spy="scroll" data-target=".navbar">
  
<div class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>对话框标题</h3>
  </div>
  <div class="modal-body">
    <p>One fine body…</p>
  </div>
  <div class="modal-footer">
    <a href="#" class="btn">关闭</a>
    <a href="#" class="btn btn-primary">Save changes</a>
  </div>
</div>

      <div class="dropdown">
  <a class="dropdown-toggle" data-toggle="dropdown" href="#">Dropdown trigger</a>
  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
    ...
  </ul>
</div>
      <div class="dropdown">
  <a class="dropdown-toggle" id="dLabel" role="button" data-toggle="dropdown" data-target="#" href="/page.html">
    Dropdown
    <b class="caret"></b>
  </a>
  <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
    ...
  </ul>
</div>

      <!-- Button to trigger modal -->
<a href="#myModal" role="button" class="btn" data-toggle="modal">查看演示案例</a>
 
<!-- Modal -->
<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
    <h3 id="myModalLabel">Modal header</h3>
  </div>
  <div class="modal-body">
    <p>One fine body…</p>
  </div>
  <div class="modal-footer">
    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
    <button class="btn btn-primary">Save changes</button>
  </div>
</div>


      <p>点击按钮查看输入的对话框。</p>

<button onclick="myFunction()">点我</button>

<p id="demo"></p>

<script>
    function myFunction() {
        var x;

        var person = prompt("请输入你的名字", "Harry Potter");
        if (person != null && person != "") {
            x = "你好 " + person + "! 今天感觉如何?";
            document.getElementById("demo").innerHTML = x;
        }
    }
</script>





      <div class="container">
  ...
</div>





      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body></html>
