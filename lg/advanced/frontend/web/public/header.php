<?php
use yii\helpers\Url;
$session = \Yii::$app->session;
$type = $session->get('user_type');
$name = $session->get('username');
?>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="?r=index/index" class="logo">
    			<img src="style/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li class="current"><a href="?r=index/index">首页</a></li>
    			<!-- <li><a href="?r=comp/comp" >公司</a></li> -->
    			<?php if($type==1){ ?>
                
					<li><a href="?r=create/create" rel="nofollow">发布职位</a></li>
    			<?php } else { ?>
    			<li><a href="?r=jianli/jianli" rel="nofollow">我的简历</a></li>
	    		<?php } ?>
	    	</ul>
	    	<?php if (empty($type)) { ?>
	    		<ul class="loginTop">
            	<li><a href="?r=login/login" rel="nofollow">登录</a></li>
            	<li>|</li>
            	<li><a href="?r=login/register" rel="nofollow">注册</a></li>
            </ul>
	    	<?php } else if ($type == 1) { ?>
	    		<dl class="collapsible_menu">
            	<dt>
           			<span><?php echo $name; ?></span>
            		<span class="red dn" id="noticeDot-1"></span>
            		<i></i>
            	</dt>
                <dd style="display: none;"><a href="?r=create/positions">我发布的职位</a></dd>
                <dd style="display: none;"><a href="?r=create/positions">我收到的简历</a></dd>
                <dd class="btm" style="display: none;"><a href="?r=comp/myhome">我的公司主页</a></dd>
                <dd style="display: none;"><a href="?r=jianli/jianli">我要找工作</a></dd>
                <dd style="display: none;"><a href="?r=login/accountbind">帐号设置</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="?r=login/login">退出</a></dd>
            </dl>
	    	<?php } else if ($type == 2) { ?>
            <dl class="collapsible_menu">
                <dt>
                    <span><?php echo $name; ?></span>
                    <span class="red dn" id="noticeDot-0"></span>
                    <i></i>
                </dt>
                <dd><a rel="nofollow" href="?r=jianli/jianli">我的简历</a></dd>
                <dd><a href="?r=jianli/collections">我收藏的职位</a></dd>
                <dd class="btm"><a href="?r=jianli/subscribe">我的订阅</a></dd>
                <dd><a href="?r=create/create">我要招人</a></dd>
                <dd><a href="?r=login/accountbind">帐号设置</a></dd>
                <dd class="logout"><a rel="nofollow" href="?r=login/login">退出</a></dd>
            </dl>
            <?php } ?>
        </div>
    </div><!-- end #header -->