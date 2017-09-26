<%--
  Created by IntelliJ IDEA.
  User: mayanyu
  Date: 2017/9/25
  Time: 下午2:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="footer-section">
    <div class="container">
        <div class="footer-top">
            <p>北京谦迈信息网络科技有限公司&nbsp;&nbsp;&nbsp;京ICP备17053878号</p>
            <p>地址：北京市丰朝阳区建国路15号院甲1号北岸1292三间房创意生活园区8-2725&nbsp;&nbsp;&nbsp;Email：2649163250@qq.com&nbsp;&nbsp;&nbsp;客服电话：010-64288861</p>
        </div>
        <script type="text/javascript">
						$(document).ready(function () {
                            /*
                             var defaults = {
                             containerID: 'toTop', // fading element id
                             containerHoverID: 'toTopHover', // fading element hover id
                             scrollSpeed: 1200,
                             easingType: 'linear'
                             };
                             */

                            $().UItoTop({easingType: 'easeOutQuart'});

                        });
					</script>
        <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


    </div>
</div>
