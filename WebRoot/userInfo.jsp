<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
			
				
		<div class ="rights">
			<div class = "aniu">
			<a class="xty">系统用户名:</a><input type ="text" class="wb"/>
				<hr class ="xhx">
				<div class = "addsx">
				</div>
				</div>
		<table class="tbles">
			<tr class="btable">
			<th>ID<img src="img/sxjt.png" class="jttb"></th>
			<th>系统用户</th>	
			<th>职位</th>
			<th>是否有效</th>
			<th>手机号</th>
			<th>密码</th>
			<th class="items10">操作</th>
			</tr>
			<tbody id="usertbody"></tbody>
			
		</table>
		<hr class ="xhx">
	</div>
	<script type="text/javascript">
	$(function(){
	
		getGuan();
		
		$(".shuaxin").click(function(){
			$("#usertbody").html("");
			getGuan();
		});
		
		$(".add").click(function(){
			if(${sessionScope.guanuser.quanXian.quan_id}<=2){
				alert("功能即将实现");
			}else{
				alert("您的权限不够！");
			}
		})
		
		$("#usertbody").on("click",".deleteUser",function(){
			if(confirm("确认删除这个权限用户吗？")){
				var tr = $(this).parent().parent();
				var value = $(tr).children(".guan_id").html();
				$.getJSON("guan/delete",{"guan_id":value},function(data){
					var flag = data;
					if(flag){
						$(tr).css("display","none");
						alert("删除成功！");
					}else{
						alert("删除失败")
					}
				});
			}
		});
		function getGuan(){
			$.getJSON("guan/queryAll",function(data){
			var str = "";
			$(data).each(function(){
				str+="<tr class='btables'><td class='guan_id'>"+this.guan_id+"</td><td>"+this.guan_zname+"</td><td>"+
				this.quanXian.quan_name+"</td><td>有效</td><td>"+this.guan_phone+"</td><td>"+this.guan_password+
				"</td><td id='caozuo' "+(${sessionScope.guanuser.quanXian.quan_id}<this.quanXian.quan_id?"":"style='display:none'")+
				"><button class='bjwb' >编辑</button>&nbsp;&nbsp;<button class='bjwbs deleteUser'>删除</button></td></tr>"
			});
			$("#usertbody").html(str);
			});
		}
	});	
	</script>
	
	
	
	
	
	
