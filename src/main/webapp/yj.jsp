<%--
  Created by IntelliJ IDEA.
  User: mayanyu
  Date: 2017/9/26
  Time: 下午6:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<%@include file="head.jsp"%>
<body>
<%@include file="header.jsp"%>
<div class="main">
    <div class="container">
        <div class="contact">
            <div class="contact-head text-center">
                <h3>联系我们</h3>
            </div>
            <!----- contact-grids ----->
            <div class="contact-grids">

                <!----- contact-form ------>
                <div class="contact-form">
                    <form action="javascript:mlert();">
                        <div class="contact-form-row">
                            <div>
                                <span>姓名 :</span>
                                <input type="text" class="text" required>
                            </div>
                            <div>
                                <span>邮箱 :</span>
                                <input type="text" class="text" required>
                            </div>
                            <div>
                                <span>主题 :</span>
                                <input type="text" class="text" required>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="clearfix"> </div>
                        <div class="contact-form-row2">
                            <span>信息 :</span>
                            <textarea> </textarea>
                        </div>
                        <input type="submit" value="发 送">
                    </form>
                </div>
                <!----- contact-form ------>
            </div>
            <!----- contact-grids ----->
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    意见反馈
                </h4>
            </div>
            <div class="modal-body">
                意见反馈成功，请等待回信！
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script>
     //提交成功
     function mlert() {
         $("#myModal").modal();
     }
</script>

<%@include file="footer.jsp"%>
</body>
</html>
