<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="rights">
			<div class="aniu">
				<a class="xty">商品:</a>
				<input type="text" class="wb">
				<button class="select">查询</button><button class="reset">重置</button>
				<hr class="xhx">
				<div class="addsx">
				</div>
			<table class="tbles">
				<tr class="btable">
					<th>ID</th>
					<th>名称</th>
					<th>类别</th>
					<th>价格</th>
					<th>图片文件位置</th>
					<th>描述</th>
					<th>发布时间</th>
					<th class="items10">操作</th>
				</tr>
			
				<tbody id="goodstbody"></tbody>
			</table>
			
			<div class="fenye">
				<div class="m-style M-box11"></div>
			</div>
			<hr class="xhx">
		</div>
		<script type="text/javascript">
	$(function(){
		var next = 1;
		var prov = 1;
		/* 首页初始化,同步执行*/
		$.ajaxSettings.async = false;
		loadGoods();
	
		function loadGoods(){
			$.getJSON("goods/main",{"currentPage":next},function(data) {
			var list = data.lists;
			var str = "";
			for (var i = 0; i < list.length; i++) {
				str+="<tr class='btables'><td class='g_id'>"+list[i].g_id+"</td><td title='"+list[i].g_name+"'>"+list[i].g_name+"</td><td>"+
				list[i].sort.sort_name+"</td><td>"+list[i].g_price+"</td><td title='"+list[i].g_img+"'>"+list[i].g_img+"</td><td title='"+list[i].text+"'>"+list[i].text+
				"</td><td title='"+list[i].create_time+"'>"+list[i].create_time+"</td><td id='caozuo' "
				+(${sessionScope.guanuser.quanXian.quan_id}<=2?"":"style='display:none'")+
				"><button class='bjwb'>查看</button>&nbsp;&nbsp;<button class='bjwbs deleteGoods'>删除</button></td></tr>";
				}
			<%--  console.log(<%=session.getAttribute("totalPage")%>); --%>
			$("#goodstbody").html(str);
		});
		}
		
		$(".add").click(function(){
			if(${sessionScope.guanuser.quanXian.quan_id}<=2){
				alert("功能即将实现");
			}else{
				alert("您的权限不够！");
			}
		});
		
		
		
	
		
		$(".M-box11").pagination({
			mode : 'fixed',
			pageCount : <%= session.getAttribute("totalPage")%>
		});
		
		/* 上下页 */
		$(".M-box11").click(function() {
			next = $(".M-box11 span").html();
			if (next != prov) {
				loadGoods();
				prov = next;
			} 
		});
		
		$(".addGoods").click(function(){
			if(${sessionScope.guanuser.quanXian.quan_id}<=2){
				alert("功能即将实现");
			}else{
				alert("您的权限不够！");
			}
		});
		
		$("#goodstbody").on("click",".bjwb",function(){
			if(${sessionScope.guanuser.quanXian.quan_id}<=2){
				var tr = $(this).parent().parent();
				var value = $(tr).children(".g_id").html();
				openTan("lookGoods",value);
			}else{
				alert("您的权限不够！");
			}
		});
		
		
		
		$("#goodstbody").on("click",".deleteGoods",function(){
			if(${sessionScope.guanuser.quanXian.quan_id}<=2){
			if(confirm("确认删除这个权限用户吗？")){
				var tr = $(this).parent().parent();
				var value = $(tr).children(".g_id").html();
				$.getJSON("goods/delete",{"g_id":value},function(data){
					var flag = data;
					if(flag){
						$(tr).css("display","none");
						alert("删除成功！");
					}else{
						alert("删除失败")
					}
				});
			}
			}else{
				alert("您的权限不够！");
			}
		});
			
	
	});	
	</script>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		