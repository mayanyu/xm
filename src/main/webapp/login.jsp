<%--
  Created by IntelliJ IDEA.
  User: mayanyu
  Date: 2017/9/26
  Time: 上午12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<%@include file="head.jsp" %>
<body>
<%@include file="header.jsp" %>
<div class="main">
    <div class="container">
        <div class="contact">

            <!----- contact-grids ----->
            <div class="contact-grids">
                <!----- contact-form ------>
                <div class="content-form">
                    <div id="legend" class="">
                        <legend class="">用户登录</legend>
                    </div>
                    <form action="javascript:mlert();" data-toggle="validator" role="form">
                        <div class="form-group">
                            <label for="inputName" class="control-label">用户名</label>
                            <input name="username" type="text" style="width: 450px;" class="form-control" id="inputName" placeholder="User Name" required>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="control-label">密码</label>
                            <input name="password" type="password" data-minlength="6" style="width: 450px;" class="form-control" id="inputPassword" placeholder="Password" required>
                        </div>
                        <br/>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">登录</button>
                            <a href="register.jsp" style="float: right;"><strong>没有账号？现在去注册</strong></a>
                        </div>
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
                    登录失败
                </h4>
            </div>
            <div class="modal-body">
                用户名或密码错误！
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script>
    $(function () {
        $('form').bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                username: {
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空！'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '用户名长度必须在6到18位之间！'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空！'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '密码长度必须在6到18位之间！'
                        }
                    }
                }
            }
        });
    });

    //提交成功
    function mlert() {
        $("#myModal").modal();
    }

</script>

<%@include file="footer.jsp" %>

</body>
</html>