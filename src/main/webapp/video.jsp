<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-cmn-Hans"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>主机游戏直播</title>

    <link rel="stylesheet" href="css/d4e0488237db533e.css">
    <link rel="stylesheet" href="css/ruc_v1.1.4.css">
    <link rel="stylesheet" href="css/global-style.css">

    <link rel="stylesheet" href="css/463c85e0e50d39c3.css">
    <link rel="stylesheet" href="css/bfa677ba4343c7c9.css">
    <link rel="stylesheet" href="css/gift-style.css">
    <link rel="stylesheet" href="css/jquery.datetimepicker.css">
    <link rel="stylesheet" href="css/sidebar_v1.0.2.css">


    <!--[if lte IE 8]>
    <![endif]-->
</head>
<%@include file="head.jsp"%>
<%@include file="header.jsp"%>
<body ng-app="myApp" ng-controller="myCtrl">
<div id="room_matrix" class="pd-sc-container close-state">
    <div id="main-container" class="pd-sc-content room-container room-user-not-login">
        <div class="room-content-box ps-container ps-theme-default ps-active-y"
                data-ps-id="3726d9c8-a262-eeaa-8021-64a98881c912">
            <div class="room-head-box">
                <div class="room-head-info">
                    <div class="room-head-info-cover">
                        <img src="images/video/h${zbtx}.jpg">
                    </div>
                    <h1 class="room-head-info-title">
                        ${spmc}
                    </h1>
                    <div class="room-head-info-detail clearfix">
                        <i class="icon-host-level icon-host-level-main icon-host-level-${zbjb}" data-level="${zbjb}"></i>
                        <span class="room-head-info-hostname">${zbmc}</span>
                        <span class="room-head-info-room-id" data-roomNum>房间号: {{roomNum}}</span>
                    </div>
                    <div class="room-head-host-level-ct"></div>
                    <div class="room-host-birthday-notify"></div>
                </div>
                <div class="room-head-tool clearfix">
                    <div onclick="javascript:location.href='yj.jsp'" class="room-head-tool-report"><span>举报</span></div>
                    <div ng-click="addAttentionNum()" class="room-head-tool-follow-container">
                        <div class="room-head-tool-follow ">
                            <div class="room-head-tool-follow-count" id="attention" data-attentionNum>{{attentionNum}}</div>
                            <div class="room-head-tool-follow-btn"  id="attentionBtn">
                                订阅
                            </div>
                            <div class="room-head-tool-follow-panda-icon"></div>
                        </div>
                        <div class="room-head-tool-follow-tip"></div>
                    </div>
                </div>
                <div class="room-head-manage">
                </div>
            </div>
            <div style="width: 1039.2px;height: 584.55px;margin-bottom: 15px;position:relative">
                <img src="images/zq.jpg" width="100" height="100" alt="" style="position: absolute;top:0;right:60px;width:100px;height:100px;background-color: black;">
                <img src="images/zq.jpg" width="100" height="100" alt="" style="position: absolute;top:0;width:100px;height:100px;background-color: black;">
                <video width="100%" height="100%" controls autoplay>
                    <source src="http://www.link-fit.com/doc/${sp}.mp4" type="video/mp4">
                </video>
            </div>
            <div class="room-foot-box   clearfix">
                <!--<div class="room-task-container">-->
                <!--<div class="room-task room-task-not-login">-->
                <!--<a href="#"><i></i><span>登录领取竹子</span></a>-->
                <!--</div>-->
                <!--</div>-->
                <div class="room-wegame-container room-wegame-not-login" style="left:0">
                    <div onclick="javascript:location.href='index.jsp'" class="room-wegame-enter" data-type="0">
                        <div class="room-wegame-enter-front"></div>
                        <div class="room-wegame-enter-back"></div>
                    </div>
                </div>
                <div class="room-speical-gift-container"></div>
                <div class="room-bag-container">
                    <div class="room-bag-box">
                        <a href="javascript:;" class="room-open-bag-btn" title="背包">
                            <img src="https://i.h2.pdim.gs/b8863fc0985110606a360b012fdcfa47.png">
                        </a>
                    </div>
                </div>
                <div class="room-gift-container" style="width: 250px;">
                    <div class="room-freegift-bag" style=""></div>
                    <div class="room-send-gift-left-btn click-disabled"><i></i>
                        <div class="room-send-gift-line-left"></div>
                    </div>
                    <div class="room-send-gift-slider">
                        <div id="gift-gif-list" class="room-send-gift-list" style="width: 416px;">
                            <ul class="room-send-gift clearfix" style="width: 416px; left: 0px;">
                                <li data-go-index class="room-send-gift-item">
                                    <a href="#" class="room-send-gift-btn" title="" data-id="56aefbeb84134616e02501ff"
                                            data-name="佛跳墙" data-price="9999" data-exp="2200" data-bamboo="30000"
                                            data-range="">
                                        <img src="images/edc5df65b07b10a6a283b557abcaf0af.webp">
                                    </a>
                                </li>
                                <li class="room-send-gift-item">
                                    <a href="#" class="room-send-gift-btn" title="" data-id="569857b5b868a87b4f0f9f9e"
                                            data-name="龙虾" data-price="999" data-exp="210" data-bamboo="3000" data-pack="11"
                                            data-range="">
                                        <img src="images/c40977fde1cd6b3365fea6fb4ba5ac15.webp">
                                    </a>
                                </li>
                                <li class="room-send-gift-item">
                                    <a href="#" class="room-send-gift-btn" title="" data-id="59008cc9bfd0777265a1b39d"
                                            data-name="稳" data-price="199" data-exp="40" data-bamboo="600" data-pack="11"
                                            data-range="">
                                        <img src="images/xmxz.webp">
                                    </a>
                                </li>
                                <li class="room-send-gift-item">
                                    <a href="#" class="room-send-gift-btn" title="" data-id="56985731b868a87b4f0f9f9d"
                                            data-name="烤鱼" data-price="49" data-exp="10" data-bamboo="150" data-pack="11"
                                            data-range="">
                                        <img src="images/mgh.webp">
                                    </a>
                                </li>
                                <li class="room-send-gift-item">
                                    <a href="#" class="room-send-gift-btn" title="" data-id="58ec6b7168b7641ac62c6f82"
                                            data-name="皮皮虾" data-price="29" data-exp="6" data-bamboo="90" data-pack="11"
                                            data-range="">
                                        <img src="images/6108470da237f9bed6c3a810a798475e.webp">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="git-list-content">
                            <div class="room-send-gift-modal-container gift-modal-hide" style="right: 306px;">
                                <div class="room-send-gift-modal " style="width: 340px;">
                                    <div class="room-send-gift-inner">
                                        <div class="room-send-gift-big-img">
                                            <img src="images/1.gif">
                                        </div>
                                        <div class="room-send-gift-info   room-send-gift-no-subdesc">
                                            <p class="room-send-gift-title">
                                                <span class="room-send-gift-name">佛跳墙</span>
                                                <span class="room-send-gift-price">9999</span>
                                            </p>
                                            <p class="room-send-gift-desc">不怕跟不上营养了</p>
                                            <p class="room-send-gift-feedback">赠：2200经验 、30000竹子
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="room-send-gift-modal-container gift-modal-hide" style="right: 254px;">
                                <div class="room-send-gift-modal room-send-gift-modal-pack" style="width: 340px;">
                                    <div class="room-send-gift-inner">
                                        <div class="room-send-gift-big-img">
                                            <img src="images/2.gif">
                                        </div>
                                        <div class="room-send-gift-info   room-send-gift-no-subdesc">
                                            <p class="room-send-gift-title">
                                                <span class="room-send-gift-name">龙虾</span>
                                                <span class="room-send-gift-price">999</span>
                                            </p>
                                            <p class="room-send-gift-desc">究极进化的小龙虾</p>
                                            <p class="room-send-gift-feedback">赠：210经验 、3000竹子
                                            </p>
                                        </div>
                                    </div>
                                    <div class="room-send-gift-package">
                                        <div class="room-send-gift-package-item" data-count="11">11</div>
                                        <div class="room-send-gift-package-item " data-count="66">66</div>
                                        <div class="room-send-gift-package-item  room-send-gift-package-item-selected"
                                                data-count="233">233
                                        </div>
                                        <div class="room-send-gift-package-btn" data-giftname="龙虾" data-go-index>赠送</div>
                                    </div>
                                </div>
                            </div>
                            <div class="room-send-gift-modal-container gift-modal-hide" style="right: 202px;">
                                <div class="room-send-gift-modal room-send-gift-modal-pack" style="width: 340px;">
                                    <div class="room-send-gift-inner">
                                        <div class="room-send-gift-big-img">
                                            <img src="images/3.gif">
                                        </div>
                                        <div class="room-send-gift-info   room-send-gift-no-subdesc">
                                            <p class="room-send-gift-title">
                                                <span class="room-send-gift-name">洗澡澡</span>
                                                <span class="room-send-gift-price">199</span>
                                            </p>
                                            <p class="room-send-gift-desc">去去污，气泡泡</p>
                                            <p class="room-send-gift-feedback">赠：40经验 、600竹子
                                            </p>
                                        </div>
                                    </div>
                                    <div class="room-send-gift-package">
                                        <div class="room-send-gift-package-item" data-count="11">11</div>
                                        <div class="room-send-gift-package-item " data-count="66">66</div>
                                        <div class="room-send-gift-package-item  room-send-gift-package-item-selected"
                                                data-count="233">233
                                        </div>
                                        <div class="room-send-gift-package-btn" data-giftname="洗澡澡" data-go-index>赠送</div>
                                    </div>
                                </div>
                            </div>
                            <div class="room-send-gift-modal-container gift-modal-hide" style="right: 150px;">
                                <div class="room-send-gift-modal room-send-gift-modal-pack" style="width: 340px;">
                                    <div class="room-send-gift-inner">
                                        <div class="room-send-gift-big-img">
                                            <img src="images/4.gif">
                                        </div>
                                        <div class="room-send-gift-info   room-send-gift-no-subdesc">
                                            <p class="room-send-gift-title">
                                                <span class="room-send-gift-name">玫瑰花</span>
                                                <span class="room-send-gift-price">199</span>
                                            </p>
                                            <p class="room-send-gift-desc">玫瑰代表你的心</p>
                                            <p class="room-send-gift-feedback">赠：40经验 、600竹子
                                            </p>
                                        </div>
                                    </div>
                                    <div class="room-send-gift-package">
                                        <div class="room-send-gift-package-item room-send-gift-package-item-selected"
                                                data-count="11">11
                                        </div>
                                        <div class="room-send-gift-package-item " data-count="66">66</div>
                                        <div class="room-send-gift-package-item " data-count="233">233</div>
                                        <div class="room-send-gift-package-btn" data-giftname="玫瑰花" data-go-index>赠送</div>
                                    </div>
                                </div>
                            </div>
                            <div class="room-send-gift-modal-container gift-modal-hide" style="right: 98px;">
                                <div class="room-send-gift-modal room-send-gift-modal-pack" style="width: 340px;">
                                    <div class="room-send-gift-inner">
                                        <div class="room-send-gift-big-img">
                                            <img src="images/6.gif">
                                        </div>
                                        <div class="room-send-gift-info   room-send-gift-no-subdesc">
                                            <p class="room-send-gift-title">
                                                <span class="room-send-gift-name">皮皮虾</span>
                                                <span class="room-send-gift-price">29</span>
                                            </p>
                                            <p class="room-send-gift-desc">皮皮虾，我们走！</p>
                                            <p class="room-send-gift-feedback">赠：6经验 、90竹子
                                            </p>
                                        </div>
                                    </div>
                                    <div class="room-send-gift-package">
                                        <div class="room-send-gift-package-item room-send-gift-package-item-selected"
                                                data-count="11">11
                                        </div>
                                        <div class="room-send-gift-package-item " data-count="66">66</div>
                                        <div class="room-send-gift-package-item " data-count="520">520</div>
                                        <div class="room-send-gift-package-btn" data-giftname="皮皮虾" data-go-index>赠送</div>
                                    </div>
                                </div>
                            </div>
                            <div class="room-send-gift-modal-container gift-modal-hide" style="right: 46px;">
                                <div class="room-send-gift-modal room-send-gift-modal-pack" style="width: 340px;">
                                    <div class="room-send-gift-inner">
                                        <div class="room-send-gift-big-img">
                                            <img src="images/5.gif">
                                        </div>
                                        <div class="room-send-gift-info   room-send-gift-no-subdesc">
                                            <p class="room-send-gift-title">
                                                <span class="room-send-gift-name">烤鱼</span>
                                                <span class="room-send-gift-price">49</span>
                                            </p>
                                            <p class="room-send-gift-desc">熟透了味道还不错</p>
                                            <p class="room-send-gift-feedback">赠：10经验 、150竹子
                                            </p>
                                        </div>
                                    </div>
                                    <div class="room-send-gift-package">
                                        <div class="room-send-gift-package-item room-send-gift-package-item-selected"
                                                data-count="11">11
                                        </div>
                                        <div class="room-send-gift-package-item " data-count="66">66</div>
                                        <div class="room-send-gift-package-item " data-count="520">520</div>
                                        <div class="room-send-gift-package-btn" data-giftname="烤鱼" data-go-index>赠送</div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="room-send-gift-right-btn"><i></i>
                        <div class="room-send-gift-line-right"></div>
                    </div>
                </div>
                <div class="room-foot-hostinfo-container">
                    <div class="room-bamboo-num" data-tips="身份证号"><i></i>
                        <span class="num" data-idNum>220322{{idNum}}****</span>
                    </div>
                    <div class="room-viewer-num room-viewer-showup">
                        <div class="room-viewer-main"><i></i><span class="num" data-onLiveNum>{{onLiveNum}}</span></div>
                        <div class="room-viewer-detail">
                            <p><strong>本次直播人气</strong></p>
                            <p><strong>当前:</strong><em class="num" data-onLiveNum1>{{onLiveNum1}}</em></p>
                            <p><strong>累计:</strong><em class="accnum" data-cumulativeNum>{{cumulativeNum}}</em></p>
                            <i></i>
                        </div>
                    </div>
                </div>
            </div>

            <div class="pd-plouto-container"></div>
            <div class="room-scrollbar-bg"></div>
            <div class="room-chat-box">
                <div class="room-notice">
                    <i class="room-notice-icon"></i>
                    <em>直播公告：</em><span>直播时间早上9：00-13：00 晚上19：30-22：30 周二休息。</span>
                </div>
                <div class="room-rank-container">
                    <div class="room-rank-list">
                        <div class="room-rank-list-hd room-rank-list-hd-3tabs clearfix">
                            <a class="tab active" data-rank="tab0" >车站</a>
                            <a class="tab" data-rank="tab1">周榜</a>
                            <a class="tab last" data-rank="tab2">总榜</a>
                        </div>
                        <div class="room-rank-list-bd clearfix">
                            <div class="room-rank-user-list active room-rank-user-station-list-dropdown room-rank-tab0">
                                <div class="rank-station">
                                    <div class="rank-station-car"></div>
                                    <div class="rank-station-state">
                                        <div class="rank-station-state-host"><i>${zbmc}</i>的车站</div>
                                        <div class="rank-station-state-info">本周已收到<i class="rank-station-state-person" data-attentionNum></i>车票，<br/>车站的排名<i>No.</i><i class="rank-station-state-rank" data-topNum>{{topNum}}</i>
                                        </div>
                                    </div>
                                </div>

                                <div class="rank-station-bottom">
                                    <div class="rank-station-bottom-title">在车站买票上车后可领取一份便当礼包</div>
                                    <div class="rank-station-bottom-gift">
                                        <div class="rank-station-bottom-gift-li">
                                            <div class="rank-station-bottom-gift-li-img">
                                                <img src="https://i.h2.pdim.gs/758fcec0fd856d186d6265a6be203ccc.webp">
                                            </div>
                                            <div class="rank-station-bottom-gift-li-text">便当x10</div>
                                        </div>
                                        <div class="rank-station-bottom-gift-li">
                                            <div class="rank-station-bottom-gift-li-img">
                                                <img src="https://i.h2.pdim.gs/8a0ff79d545c53b1905a978de2babd76.webp">
                                            </div>
                                            <div class="rank-station-bottom-gift-li-text">竹子x666</div>
                                        </div>
                                    </div>
                                    <div class="rank-station-bottom-line"></div>
                                    <div class="rank-station-bottom-state">
                                        <div class="rank-station-buy-button">购买车票</div>
                                        <div class="rank-station-buy-info">票价:<i class="icon"></i><i
                                                class="price">60</i></div>
                                    </div>
                                </div>

                            </div>
                            <div class="room-rank-user-list room-rank-user-list-dropdown room-rank-tab1"
                                    style="height: 102px;">
                                <div class="rank-top-row-wrap clearfix">

                                    <div class="rank-top-row rank-top-row-1">
                                        <div class="rank-user-avatar rank-user-avatar-1">
                                            <img src="https://i.h2.pdim.gs/dmfd/200_200_100/0257040380bd7d294a8017532c07e39b.webp">
                                            <div class="rank-user-avatar-cover"></div>
                                        </div>
                                        <div class="rank-user-name">
                                            <div class="rank-user-name-text" data-rid="30270996" data-score="0"
                                                    data-name="阿卓亚" title="阿卓亚">阿卓亚
                                            </div>
                                        </div>
                                        <div class="rank-progress-bg"></div>
                                        <span class="rank-user-level icon-level-19" data-level="19"></span>
                                    </div>


                                    <div class="rank-top-row rank-top-row-2">
                                        <div class="rank-user-avatar rank-user-avatar-2">
                                            <img src="https://i.h2.pdim.gs/dmfd/200_200_100/e1946ed1bd32b1b2f7a08966ccd79642.webp">
                                            <div class="rank-user-avatar-cover"></div>
                                        </div>
                                        <div class="rank-user-name">
                                            <div class="rank-user-name-text" data-rid="75424002" data-score="0"
                                                    data-name="19K_Gaming" title="19K_Gaming">19K_Gaming
                                            </div>
                                        </div>
                                        <div class="rank-progress-bg"></div>
                                        <span class="rank-user-level icon-level-6" data-level="6"></span>
                                    </div>


                                    <div class="rank-top-row rank-top-row-3">
                                        <div class="rank-user-avatar rank-user-avatar-3">
                                            <img src="https://i.h2.pdim.gs/dmfd/200_200_100/d444f7ba07f92b4a6dc4cffc52f8862e.webp">
                                            <div class="rank-user-avatar-cover"></div>
                                        </div>
                                        <div class="rank-user-name">
                                            <div class="rank-user-name-text" data-rid="75398178" data-score="0"
                                                    data-name="酷陆萨琦一己古" title="酷陆萨琦一己古">酷陆萨琦一己古
                                            </div>
                                        </div>
                                        <div class="rank-progress-bg"></div>
                                        <span class="rank-user-level icon-level-8" data-level="8"></span>
                                    </div>

                                </div>


                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-4">4</span>
                                    <span class="rank-user-level icon-level-15" data-level="15"></span>
                                    <span class="rank-user-name" data-rid="3051586" data-name="鸦karas" title="鸦karas">鸦karas</span>
                                    <span class="rank-user-score" title="99900">9万</span>
                                </div>


                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-5">5</span>
                                    <span class="rank-user-level icon-level-9" data-level="9"></span>
                                    <span class="rank-user-name" data-rid="23283608" data-name="阿苏id号" title="阿苏id号">阿苏id号</span>
                                    <span class="rank-user-score" title="27100">2万</span>
                                </div>


                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-6">6</span>
                                    <span class="rank-user-level icon-level-6" data-level="6"></span>
                                    <span class="rank-user-name" data-rid="44010828" data-name="沐沐灬风风" title="沐沐灬风风">沐沐灬风风</span>
                                    <span class="rank-user-score" title="18000">1万</span>
                                </div>


                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-7">7</span>
                                    <span class="rank-user-level icon-level-5" data-level="5"></span>
                                    <span class="rank-user-name" data-rid="77534172" data-name="无心插柳柳橙汁哇"
                                            title="无心插柳柳橙汁哇">无心插柳柳橙汁哇</span>
                                    <span class="rank-user-score" title="14400">1万</span>
                                </div>


                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-8">8</span>
                                    <span class="rank-user-level icon-level-6" data-level="6"></span>
                                    <span class="rank-user-name" data-rid="48751670" data-name="世界de新" title="世界de新">世界de新</span>
                                    <span class="rank-user-score" title="14000">1万</span>
                                </div>


                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-9">9</span>
                                    <span class="rank-user-level icon-level-10" data-level="10"></span>
                                    <span class="rank-user-name" data-rid="33569170" data-name="JY丶大魔王" title="JY丶大魔王">JY丶大魔王</span>
                                    <span class="rank-user-score" title="12900">1万</span>
                                </div>


                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-10">10</span>
                                    <span class="rank-user-level icon-level-17" data-level="17"></span>
                                    <span class="rank-user-name" data-rid="32512164" data-name="恶人谷丶正人君子"
                                            title="恶人谷丶正人君子">恶人谷丶正人君子</span>
                                    <span class="rank-user-score" title="10900">1万</span>
                                </div>

                            </div>
                            <div class="room-rank-user-list room-rank-user-list-dropdown room-rank-tab2" style="height: 102px;">
                                <div class="rank-top-row-wrap clearfix">

                                    <div class="rank-top-row rank-top-row-1">
                                        <div class="rank-user-avatar rank-user-avatar-1">
                                            <img src="https://i.h2.pdim.gs/dmfd/200_200_100/69e3cb9fc5c9fc29c904f79d86516974.webp">
                                            <div class="rank-user-avatar-cover"></div>
                                        </div>
                                        <div class="rank-user-name"><div class="rank-user-name-text" data-rid="33224644" data-score="0" data-name="蕾娜的耶罗" title="蕾娜的耶罗">蕾娜的耶罗</div></div>
                                        <div class="rank-progress-bg"></div>
                                        <span class="rank-user-level icon-level-21" data-level="21"></span>
                                    </div>





                                    <div class="rank-top-row rank-top-row-2">
                                        <div class="rank-user-avatar rank-user-avatar-2">
                                            <img src="https://i.h2.pdim.gs/dmfd/200_200_100/05fe8b1ca5ec6c94bc200b227e421dd9.webp">
                                            <div class="rank-user-avatar-cover"></div>
                                        </div>
                                        <div class="rank-user-name"><div class="rank-user-name-text" data-rid="80936110" data-score="0" data-name="mrCccc丶丶" title="mrCccc丶丶">mrCccc丶丶</div></div>
                                        <div class="rank-progress-bg"></div>
                                        <span class="rank-user-level icon-level-36" data-level="36"></span>
                                    </div>





                                    <div class="rank-top-row rank-top-row-3">
                                        <div class="rank-user-avatar rank-user-avatar-3">
                                            <img src="https://i.h2.pdim.gs/dmfd/200_200_100/0499bc5cc94d4c9add92f9bcb83f731d.webp">
                                            <div class="rank-user-avatar-cover"></div>
                                        </div>
                                        <div class="rank-user-name"><div class="rank-user-name-text" data-rid="5742832" data-score="0" data-name="chanffff" title="chanffff">chanffff</div></div>
                                        <div class="rank-progress-bg"></div>
                                        <span class="rank-user-level icon-level-18" data-level="18"></span>
                                    </div>

                                </div>






                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-4">4</span>
                                    <span class="rank-user-level icon-level-21" data-level="21"></span>
                                    <span class="rank-user-name" data-rid="51303108" data-name="和谐中" title="和谐中">和谐中</span>
                                    <span class="rank-user-score" title="62101314">6210万</span>
                                </div>





                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-5">5</span>
                                    <span class="rank-user-level icon-level-34" data-level="34"></span>
                                    <span class="rank-user-name" data-rid="79187306" data-name="knika" title="knika">knika</span>
                                    <span class="rank-user-score" title="30672700">3067万</span>
                                </div>





                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-6">6</span>
                                    <span class="rank-user-level icon-level-14" data-level="14"></span>
                                    <span class="rank-user-name" data-rid="23120306" data-name="Derrick_Young" title="Derrick_Young">Derrick_Young</span>
                                    <span class="rank-user-score" title="30250360">3025万</span>
                                </div>





                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-7">7</span>
                                    <span class="rank-user-level icon-level-21" data-level="21"></span>
                                    <span class="rank-user-name" data-rid="99754546" data-name="251陳" title="251陳">251陳</span>
                                    <span class="rank-user-score" title="26183600">2618万</span>
                                </div>





                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-8">8</span>
                                    <span class="rank-user-level icon-level-21" data-level="21"></span>
                                    <span class="rank-user-name" data-rid="66769884" data-name="__毛__" title="__毛__">__毛__</span>
                                    <span class="rank-user-score" title="15117100">1511万</span>
                                </div>





                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-9">9</span>
                                    <span class="rank-user-level icon-level-12" data-level="12"></span>
                                    <span class="rank-user-name" data-rid="4874062" data-name="八八八八八丶" title="八八八八八丶">八八八八八丶</span>
                                    <span class="rank-user-score" title="13949132">1394万</span>
                                </div>





                                <div class="rank-row ">
                                    <span class="rank-icon rank-icon-10">10</span>
                                    <span class="rank-user-level icon-level-12" data-level="12"></span>
                                    <span class="rank-user-name" data-rid="76117344" data-name="奶球的雷娜" title="奶球的雷娜">奶球的雷娜</span>
                                    <span class="rank-user-score" title="10969631">1096万</span>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="room-chat-container">
                    <div class="room-chat-scroller ps-container ps-theme-default" style="position:absolute;overflow:auto;height:100%;"
                            data-ps-id="97bf98eb-4eb6-9a29-68dc-af812ef5b878">
                        <ul class="room-chat-messages" id="msg-list">
                            <!--<li class="room-chat-item room-chat-message">-->
                            <!--<div class="room-chat-tags">-->
                            <!--<span class="room-chat-tag-user-level icon-level-8"></span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-user-name">独家记翼:</span>-->
                            <!--<span class="room-chat-content" style="">梦里</span>-->
                            <!--</li>-->





                            <!--<li class="room-chat-item room-chat-message  " data-rid="3645320" data-name="LOTO"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">-->
                            <!--<div class="room-chat-tags">-->


                            <!--<span class="room-chat-tag-user-level icon-level-6"></span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="3645320" data-name="LOTO" data-rawtime="1506344909"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">LOTO:</span>-->
                            <!--<span class="room-chat-content" style="">梦里</span>-->
                            <!--</li>-->
                            <!--<li class="room-chat-item room-chat-message  " data-rid="83164554" data-name="高大威猛的汉子"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">-->
                            <!--<div class="room-chat-tags">-->
                            <!--<span class="room-chat-tag-plat room-chat-tag-plat-mobile room-chat-tag-plat-ios"></span>-->


                            <!--<span class="room-chat-tag-user-level icon-level-6"></span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="83164554" data-name="高大威猛的汉子" data-rawtime="1506344911"-->
                            <!--data-need-update-identity="" data-identity="30"-->
                            <!--data-sp_identity="30">高大威猛的汉子:</span>-->
                            <!--<span class="room-chat-content" style="">浪投小王子</span>-->
                            <!--</li>-->
                            <!--<li class="room-chat-item room-chat-message  " data-rid="34270740" data-name="几多愁Xs"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">-->
                            <!--<div class="room-chat-tags">-->
                            <!--<span class="room-chat-tag-plat room-chat-tag-plat-mobile room-chat-tag-plat-android"></span>-->


                            <!--<span class="room-chat-tag-ispay" title="应援团"></span>-->
                            <!--<span class="room-chat-tag-user-level icon-level-7"></span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="34270740" data-name="几多愁Xs" data-rawtime="1506344912"-->
                            <!--data-need-update-identity="" data-identity="30"-->
                            <!--data-sp_identity="30">几多愁Xs:</span>-->
                            <!--<span class="room-chat-content" style="">中二，你会被解雇的</span>-->
                            <!--</li>-->
                            <!--<li class="room-chat-item room-chat-message room-chat-identity-room-manager "-->
                            <!--data-rid="4482456" data-name="流风名剑" data-need-update-identity="" data-identity="60"-->
                            <!--data-sp_identity="30">-->
                            <!--<div class="room-chat-tags">-->

                            <!--<span class="room-chat-tag-user-identity room-chat-icon-room-manager">房管</span>-->

                            <!--<span class="room-chat-tag-ispay" title="应援团"></span>-->
                            <!--<span class="room-chat-tag-user-level icon-level-15"></span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="4482456" data-name="流风名剑" data-rawtime="1506344912"-->
                            <!--data-need-update-identity="" data-identity="60" data-sp_identity="30">流风名剑:</span>-->
                            <!--<span class="room-chat-content" style="">浪费自己的命中率</span>-->
                            <!--</li>-->
                            <!--<li class="room-chat-item room-chat-message  " data-rid="27545276" data-name="我也是迫不得已"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">-->
                            <!--<div class="room-chat-tags">-->
                            <!--<span class="room-chat-tag-plat room-chat-tag-plat-mobile room-chat-tag-plat-android"></span>-->


                            <!--<span class="room-chat-tag-ispay" title="应援团"></span>-->
                            <!--<span class="room-chat-tag-user-level icon-level-7"></span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="27545276" data-name="我也是迫不得已" data-rawtime="1506344915"-->
                            <!--data-need-update-identity="" data-identity="30"-->
                            <!--data-sp_identity="30">我也是迫不得已:</span>-->
                            <!--<span class="room-chat-content" style="">赢了，yeah</span>-->
                            <!--</li>-->
                            <!--<li class="room-chat-item room-chat-message  " data-rid="4122906" data-name="风吹裤衩冷"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="4122906" data-name="风吹裤衩冷" data-rawtime="1506344918"-->
                            <!--data-need-update-identity="" data-identity="30"-->
                            <!--data-sp_identity="30">风吹裤衩冷:</span>-->
                            <!--<span class="room-chat-content" style="">3分</span>-->
                            <!--</li>-->
                            <!--<li class="room-chat-item room-chat-message  " data-rid="76225390" data-name="peterzhao1212"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="76225390" data-name="peterzhao1212" data-rawtime="1506344921"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">peterzhao1212:</span>-->
                            <!--<span class="room-chat-content" style="">大毒瘤</span>-->
                            <!--</li>-->
                            <!--<li class="room-chat-item room-chat-message room-chat-identity-room-manager "-->
                            <!--data-rid="32512164" data-name="恶人谷丶正人君子" data-need-update-identity="" data-identity="60"-->
                            <!--data-sp_identity="30">-->
                            <!--<div class="room-chat-tags">-->

                            <!--<span class="room-chat-tag-user-identity room-chat-icon-room-manager">房管</span>-->

                            <!--<span class="room-chat-tag-ispay" title="应援团"></span>-->
                            <!--<a class="room-chat-tag-badge"-->
                            <!--style="background-image:url('https://i.h2.pdim.gs/b529bb07e921ecd5ba6bf94401d8f314.webp');"-->
                            <!--href="http://www.panda.tv/s7" target="_blank"></a>-->
                            <!--<span class="room-chat-tag-host-level icon-host-level-4"></span>-->
                            <!--<div class="room-chat-tag-school-group">-->
                            <!--<img class="room-chat-tag-school-group-img"-->
                            <!--src="https://i.h2.pdim.gs/dff706d89128290c3cef19cf4125baa2.webp">-->
                            <!--<span class="room-chat-tag-school-group-name">哈医大</span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-tag-user-level icon-level-17"></span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="32512164" data-name="恶人谷丶正人君子" data-rawtime="1506344928"-->
                            <!--data-need-update-identity="" data-identity="60"-->
                            <!--data-sp_identity="30">恶人谷丶正人君子:</span>-->
                            <!--<span class="room-chat-content" style="">GG</span>-->
                            <!--</li>-->
                            <!--<li class="room-chat-item room-chat-message  " data-rid="50990760" data-name="不是黑白的猫熊"-->
                            <!--data-need-update-identity="" data-identity="30" data-sp_identity="30">-->
                            <!--<div class="room-chat-tags">-->


                            <!--<span class="room-chat-tag-ispay" title="应援团"></span>-->
                            <!--<span class="room-chat-tag-user-level icon-level-8"></span>-->
                            <!--</div>-->
                            <!--<span class="room-chat-user-name" style="" data-toggle="room-manage-menu"-->
                            <!--data-rid="50990760" data-name="不是黑白的猫熊" data-rawtime="1506344931"-->
                            <!--data-need-update-identity="" data-identity="30"-->
                            <!--data-sp_identity="30">不是黑白的猫熊:</span>-->
                            <!--<span class="room-chat-content" style="">白练的都是</span>-->
                            <!--</li>-->
                        </ul>
                        <div class="ps-scrollbar-x-rail" style="left: 0px; bottom: 0px;">
                            <div class="ps-scrollbar-x" tabindex="0" style="left: 0px; width: 0px;"></div>
                        </div>
                        <div class="ps-scrollbar-y-rail" style="top: 0px; right: 0px;">
                            <div class="ps-scrollbar-y" tabindex="0" style="top: 0px; height: 0px;"></div>
                        </div>
                    </div>
                    <div class="room-chat-level-message"></div>
                    <div class="room-chat-special-tips clearfix"></div>
                    <div class="room-chat-tips clearfix"></div>
                    <div class="room-chat-public-notice" style="display: none;">
                        <div class="room-public-notice">XX直播倡导绿色直播，请大家文明发言，拒绝低俗言论。</div>
                    </div>
                    <div class="room-chat-pay-barrage-notice">
                        <div class="room-pay-barrage-tips"><i>高能弹幕</i>会让更多的人关注到你的发言,每次发送消耗<i>20猫币</i>可在<i>消费记录</i>中查看
                        </div>
                    </div>
                </div>
                <div class="room-chat-dispatch" style="height: 70px;">
                    <div class="room-chat-sender">
                        <div class="room-chat-inputfield" style="top:11px">
                            <!--<div class="room-chat-texta-person-permission" style="display: block;"><a-->
                            <!--class="room-chat-texta-login-btn" href="javascript:;">登录</a>发弹幕，与大家一起互动-->
                            <!--</div>-->
                            <textarea class="room-chat-texta" id="msgValue"></textarea>
                            <!--<div class="room-chat-texta-placeholder">快和大家一起聊天吧~~</div>-->
                        </div>
                        <div class="room-chat-send room-chat-send" style="top:11px" id="sendMsgBtn">发送</div>
                    </div>
                </div>
                <ul class="room-manage-menu"></ul>
            </div>
        </div>
    </div>
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/common.js"></script>
    <script src="js/tab.js"></script>
    <!--<script src="js/ng.js"></script>-->
    <script src="js/chance.js"></script>
    <script>
//        var app = angular.module("myApp", []);
//        app.controller("myCtrl", function ($scope) {
//            var vm = $scope;
//            //右侧聊天窗口选项卡
//            vm.tabIndex = 1;
//            vm.selectTab = function (tabIndex) {
//                vm.tabIndex = tabIndex;
//            };
//
//            //房间号
//            vm.roomNum = chance.integer({min: 100000, max: 999999});
//
//            //关注人数
//            var initAttentionNum = chance.integer({min: 5000, max: 300000});
//            vm.attentionNum = initAttentionNum;
//            vm.addAttentionNum = function () {
//                if(vm.attentionNum>(initAttentionNum+1)){
//                    return;
//                }
//                vm.attentionNum += 1;
//            };
//
//            //在线人数
//            vm.onLiveNum = chance.integer({min: 10000, max: 99999});
//            vm.cumulativeNum = chance.integer({min:vm.onLiveNum , max: (vm.onLiveNum + 100000) });
//
//            // 聊天信息
//            vm.msgs = [
//                {nickname:'独家记忆',text:'2333',level:2},
//                {nickname:'LOTO',text:'哈哈',level:3}
//            ];
//            vm.sendMsg = function (nickname) {
//                vm.msgs.push({nickname:nickname,text:vm.msgValue,level:1});
//                vm.msgValue = "";
//            }
//        });

$(function(){
    //一些交互操作
    //tab选项卡
    new Tab({
        tabsContainer:'room-rank-list-hd-3tabs',
        tab:'tab',
        contentContainer:'room-rank-list-bd',
        content:'room-rank-user-list'
    });

    // 赠送跳转首页
    $('[data-go-index]').click(function () {
        window.location='./login.html';
    });

    // 礼物显示
    var list = $('#gift-gif-list .room-send-gift-item');
    var contents = $('#git-list-content .room-send-gift-modal-container');

    $('.room-send-gift-item').on('mouseover',function(event){
        // 移动到某个元素上，某个元素展开

        var nowItem = event.target;
        if($(nowItem).hasClass('room-send-gift-item')){
            var index = b.getIndex(list,nowItem);
            $(contents[index]).removeClass('gift-modal-hide');

            for(var i=0;i<contents.length;i++){
                if(i != index){
                    $(contents[i]).addClass('gift-modal-hide');
                }
            }
        }
    });

    $('.room-send-gift-modal-container').on('mouseleave',function () {
        var nowItem = event.target;
        var index = b.getIndex(contents,nowItem);
        for(var i=0;i<contents.length;i++){
            if(contents[i] == nowItem){
                $(nowItem).removeClass('gift-modal-hide');
            }else{
                $(contents[i]).addClass('gift-modal-hide');
            }
        }
    });

    //礼物选择数量
    $('.room-send-gift-package').on('click','.room-send-gift-package-item',function (e) {
        var nowItem = e.target;
        if($(nowItem).hasClass('room-send-gift-package-item')){
            $(nowItem).addClass('room-send-gift-package-item-selected');
            var lists = $(nowItem).parent().find('.room-send-gift-package-item');
            for(var i = 0;i < lists.length; i++){
                if((lists[i] !== nowItem)){
                    $(lists[i]).removeClass('room-send-gift-package-item-selected');
                }
            }
        }
    });
    //数据初始化
    var num =chance.integer({min: 10000, max: 99999});
    var initData = [
        {varName:'roomNum',varValue:chance.integer({min: 100000, max: 999999})},
        {varName:'topNum',varValue:chance.integer({min: 1, max: 150})},
        {varName:'attentionNum',varValue:chance.integer({min: 5000, max: 300000})},
        {varName:'onLiveNum',varValue:num},
        {varName:'onLiveNum1',varValue:num},
        {varName:'cumulativeNum',varValue:chance.integer({min:num , max: (num + 100000) })},
        {varName:'idNum',varValue:chance.integer({min: 100000000, max: 999999999})},
    ];

    for(var i=0;i<initData.length;i++){
        var attrStr = "[data-" + initData[i].varName + "]";
        var res = $(attrStr).text().replace("{{"+ initData[i].varName +"}}",initData[i].varValue);
        $(attrStr).html(res);
    }

    var attentionContent = $("#attention");
    $('#attentionBtn').click(function () {
        if(attentionContent.text() == initData[1].varValue){
            attentionContent.text((initData[1].varValue+1));
        }
    });

    $.ajax({
        url:'./data/forbidden_word.json',
        dataType:'json',
        success:function (data) {
            getWord(data);
        }
    });
    function getWord(word) {
        var makeChar = function (len) {
            var char = '*'
            for(var i=0;i<len-1;i++){
                char+='*';
            }
            return char;
        };

        var forbiddenWords = word;

        $('#sendMsgBtn').click(function () {
            var sendMsg = $('#msgValue').val();
            if(sendMsg.length == 0) return;

            for(var i=0;i<forbiddenWords.length;i++){
                if(sendMsg.indexOf(forbiddenWords[i])!=-1){
                    var len = forbiddenWords[i].length;
                    sendMsg = sendMsg.replace(forbiddenWords[i],makeChar(len));
                }
            }


            var str = '<li class="room-chat-item room-chat-message">'
                +     '<div class="room-chat-tags">'
                + '<span class="room-chat-tag-user-level icon-level-'+chance.integer({min: 1, max: 40})+'"></span>'
                + '</div>'
                + '<span class="room-chat-user-name">匿名:</span>'
                + '<span class="room-chat-content" style="">@text</span>'
                + '</li>'
            $('#msg-list').append(str.replace("@text",sendMsg));
            $('#msgValue').val("");
        });
    }

});
    </script>
</div>
<div class="footer-section">
<div class="container">
    <div class="footer-top">
        <p>北京谦迈信息网络科技有限公司&nbsp;&nbsp;&nbsp;京ICP备17053878号</p>
        <p>地址：北京市丰朝阳区建国路15号院甲1号北岸1292三间房创意生活园区8-2725&nbsp;&nbsp;&nbsp;Email：2649163250@qq.com&nbsp;&nbsp;&nbsp;客服电话：010-64288861</p>
    </div>
</div>
</div>

</body>
</html>