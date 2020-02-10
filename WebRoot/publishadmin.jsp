<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="rights">
			<div class="aniu">
				<hr class="xhx">
				<div class="addsx">
				</div>
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
			var prov = 1;
			var next = 1;
			/* 首页初始化,同步执行*/
			$.ajaxSettings.async = false;
			loadGoods();
			
			function loadGoods(){
				$.getJSON("goods/main2",{"currentPage":next},function(data) {
					var list = data.lists;
					console.log(list);
					var str = "";
					for (var i = 0; i < list.length; i++) {
						str+="<tr class='btables'><td class='g_id'>"+list[i].g_id+"</td><td title='"+list[i].g_name+"'>"+list[i].g_name+"</td><td>"+
						list[i].sort.sort_name+"</td><td>"+list[i].g_price+"</td><td title='"+list[i].g_img+"'>"+list[i].g_img+"</td><td title='"+list[i].text+"'>"+list[i].text+
						"</td><td title='"+list[i].create_time+"'>"+list[i].create_time+"</td><td id='caozuo' "+(${sessionScope.guanuser.quanXian.quan_id}<=2?"":"style='display:none'")+
						"><button class='bjwbs lookgoods'>查看</button><button class='bjwb tongguo'>通过</button>&nbsp;&nbsp;<button class='bjwbs jujue'>拒绝</button></td></tr>";
						}
					<%--  console.log(<%=session.getAttribute("totalPage")%>); --%>
					$("#goodstbody").html(str);
				});
			}
			
			
			
	$(function(){
		
		$(".add").click(function(){
			if(${sessionScope.guanuser.quanXian.quan_id}<=2){
				alert("功能即将实现");
			}else{
				alert("您的权限不够！");
			}
		});
		
		$(".M-box11").pagination({
			mode : 'fixed',
			pageCount : <%= session.getAttribute("totalPage2")%>
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
		
		$("#goodstbody").on("click",".lookgoods",function(){
			if(${sessionScope.guanuser.quanXian.quan_id}<=2){
				var tr = $(this).parent().parent();
				var value = $(tr).children(".g_id").html();
				openTan("lookGoods",value);
			}else{
				alert("您的权限不够！");
			}
		});
		
		$("#goodstbody").on("click",".tongguo",function(){
			if(confirm("确认通过这个审核吗？")){
				var tr = $(this).parent().parent();
				var value = $(tr).children(".g_id").html();
				$.getJSON("goods/update",{"g_id":value,"zt_id":1},function(data){
					var flag = data;
					if(flag){
						$(tr).css("display","none");
						alert("改商品审核通过！");
					}else{
						alert("审核通过操作未成功！")
					}
				});
			}
		});
		
		$("#goodstbody").on("click",".jujue",function(){
			var tr = $(this).parent().parent();
			var value = $(tr).children(".g_id").html();
			$.getJSON("goods/update",{"g_id":value,"zt_id":4},function(data){
				var flag = data;
				if(flag){
					$(tr).css("display","none");
					alert("已拒绝改商品上架！");
				}else{
					alert("拒绝审核操作未成功！")
				}
			});
		});
	
			
	
	});	
	</script>

		