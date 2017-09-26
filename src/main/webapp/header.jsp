<%--
  Created by IntelliJ IDEA.
  User: mayanyu
  Date: 2017/9/25
  Time: 下午2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header" id="home">
    <div class="container">
        <div class="header-top">
            <div class="logo">
                <a href="index.jsp">谦迈信息</a>
            </div>
            <div class="top-menu">
                <span class="menu"><img src="images/nav.png" alt=""/> </span>
                <ul>
                    <li><a href="index.jsp">首页</a></li>
                    <li><a href="games.jsp">游戏下载</a></li>
                    <li><a href="about.jsp">关于我们</a></li>
                    <li><a href="jfcl.jsp">纠纷处理</a></li>
                    <li><a href="jzjh.jsp">家长监护</a></li>
                    <li><a href="contact.jsp">我要当主播</a></li>
                    <li><a href="login.jsp">登录|注册</a></li>
                </ul>
                <!-- script for menu -->

                <script>
		 $("span.menu").click(function () {
             $(".top-menu ul").slideToggle("slow", function () {
             });
         });
		 </script>

                <!-- //script for menu -->

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>