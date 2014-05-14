<%@ page language="java" isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<div>
	<ul class="breadcrumb">
		<li><a href="#" onclick="ajaxUrl('/jf/index/content');">主页</a> <span class="divider">/</span></li>
		<li><a href="#">操作提示</a></li>
	</ul>
</div>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header well" data-original-title>
			<h2>
				<i class="icon-edit"></i> 操作失败
			</h2>
			<div class="box-icon">
				<a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a> 
				<a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
			</div>
		</div>
		
		<div class="box-content">
			<h1>
				操作提示：<small>${requestScope.msg }.</small>
			</h1>
			<div id="errorId" style="text-align: center;"></div>
		</div>
	</div>
	<!--/span-->
</div>
<!--/row-->

<script type="text/javascript">
	
	var wait = 10;
 	var t = null;
 	t = setTimeout(time, 1000);
 	function time(){
    	clearTimeout(t);
	 	if(wait == 0){
	 		ajaxUrl('/jf/index/content');
	 		return false;
	 	}
    	$("#errorId").html("系统将于" + wait + "秒后自动返回主页");
    	t = setTimeout(time, 1000);
    	wait = wait - 1;
 	} 

</script>