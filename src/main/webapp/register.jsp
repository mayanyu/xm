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
                        <legend class="">用户注册</legend>
                    </div>
                    <form action="javascript:mlert();" data-toggle="validator" role="form">
                        <div class="form-group">
                            <label for="inputName" class="control-label">用户名</label>
                            <input name="username" type="text" style="width: 350px;" class="form-control" id="inputName" placeholder="User Name" required>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="control-label">密码</label>
                            <input name="password" type="password" data-minlength="6" style="width: 350px;" class="form-control" id="inputPassword" placeholder="Password" required>
                        </div>

                        <div class="form-group">
                            <label for="inputPassword" class="control-label">确认密码</label>
                            <input name="confirmPassword" type="password" style="width: 350px;" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
                        </div>

                        <div class="form-group">
                            <label for="inputUserName" class="control-label">真实姓名</label>
                            <input name="realName" type="text" style="width: 350px;" class="form-control" id="inputUserName" placeholder="User Name" required>
                        </div>
                        <div class="form-group">
                            <label for="inputIdCard" class="control-label">身份证号</label>
                            <input name="idCard" type="text" style="width: 350px;" class="form-control" id="inputIdCard" placeholder="ID Card" required>
                        </div>
                        <div class="form-group">
                            <label for="inputPhone" class="control-label">手机号码</label>
                            <input name="phone" type="text" style="width: 350px;" class="form-control" id="inputPhone" placeholder="Phone" required>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="control-label">电子邮箱</label>
                            <input name="email" type="email" style="width: 350px;" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
                            <div class="help-block with-errors"></div>
                        </div>

                        <div class="form-group">
                            <div class="checkbox">
                                <label>
                                    <input name="userbook" type="checkbox" id="terms" data-error="Before you wreck yourself" required>
                                    <strong>&nbsp;我已阅读并同意<a target="_blank" href="pageuserplan.jsp">《用户协议》</a></strong>
                                </label>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <br/>
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">提交注册</button>
                            <a href="login.jsp" style="float: right;"><strong>已有账号登录？</strong></a>
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
                    注册成功
                </h4>
            </div>
            <div class="modal-body">
                用户信息已经提交成功，请耐心等待信息审核！
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
                },
                confirmPassword: {
                    validators: {
                        notEmpty: {
                            message: '确认密码不能为空！'
                        },
                        identical: {
                            field: 'password',
                            message: '与密码不一致！'
                        },
                        stringLength: {
                            min: 6,
                            max: 18,
                            message: '确认密码长度必须在6到18位之间！'
                        }
                    }
                },
                phone: {
                    validators: {
                        notEmpty: {
                            message: '手机号码不能为空！'
                        },
                        regexp: {
                            regexp: /^1[34578]\d{9}$/,
                            message: '手机号码格式有误！'
                        }
                    }
                },
                realName: {
                    validators: {
                        notEmpty: {
                            message: '真实姓名不能为空！'
                        },
                        regexp: {
                            regexp: /[\u4E00-\u9FA5]{2,4}/,
                            message: '真实姓名（汉字）格式有误！'
                        }
                    }
                },
                idCard: {
                    validators: {
                        notEmpty: {
                            message: '身份证号不能为空！'
                        },
                        regexp: {
                            regexp: /(^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$)|(^[1-9]\d{5}\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{2}[0-9Xx]$)/,
                            message: '身份证号格式有误！'
                        }

                    }
                },
                email: {
                    validators: {
                        notEmpty: {
                            message: '邮箱地址不能为空！'
                        },
                        emailAddress: {
                            message: '邮箱地址格式有误！'
                        }
                    }
                },
                userbook: {
                    validators: {
                        notEmpty: {
                            message: '请勾选用户协议！'
                        }
                    }
                },
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