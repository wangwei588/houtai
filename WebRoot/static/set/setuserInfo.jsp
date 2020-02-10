<%@ page  pageEncoding="UTF-8"%>

				<div id="zhongxin" style="padding-top: 13px;">
					<table id="table_report" class="table table-striped table-bordered table-hover">
						
						
							<input name="ROLE_ID" id="role_id" value="${sessionScope.guanuser.guan_id } }" type="hidden">
						
						<tbody><tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">用户名:</td>
							<td><input type="text" name="USERNAME" id="loginname" value="${sessionScope.guanuser.guan_name }" maxlength="32" placeholder="这里输入用户名" title="用户名" style="width: 98%; color: gray;" readonly="readonly"></td>
						</tr>
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">姓名:</td>
							<td><input type="text" name="NUMBER" id="NUMBER" value="${sessionScope.guanuser.guan_zname }" maxlength="32" placeholder="这里输入编号" title="姓名" onblur="hasN('admin')" style="width:98%;" readonly="readonly"></td>
						</tr>
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">密码:</td>
							<td><input type="password" name="PASSWORD" id="password" maxlength="32" placeholder="输入密码" title="密码" style="width:98%;"></td>
						</tr>
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">确认密码:</td>
							<td><input type="password" name="chkpwd" id="chkpwd" maxlength="32" placeholder="确认密码" title="确认密码" style="width:98%;"></td>
						</tr>
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">职位:</td>
							<td><input type="text" name="NAME" id="name" value="${sessionScope.guanuser.quanXian.quan_name }" maxlength="32" placeholder="这里输入姓名" title="职位" readonly="readonly" style="width:98%;"></td>
						</tr>
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">手机号:</td>
							<td><input type="number" name="PHONE" id="PHONE" value="${sessionScope.guanuser.guan_phone }" maxlength="32" placeholder="这里输入手机号" title="手机号" style="width:98%;" readonly="readonly"></td>
						</tr>
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">备注:</td>
							<td><input type="text" name="BZ" id="BZ" value="" placeholder="这里输入备注" maxlength="64" title="备注" style="width:98%;"></td>
						</tr>
						<tr>
							<td style="text-align: center;" colspan="10">
								<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
								<a class="btn btn-mini btn-danger" onclick="closeTan()">取消</a>
							</td>
						</tr>
						<script type="text/javascript">
							function save(){
								var pwd1 = $("#password").val();
								var pwd2 = $("#chkpwd").val();
								if(pwd1!=pwd2){
									alert("密码不正确");
								}else{
									alert("周四周五不给修改个人信息");
								}
							}
						</script>
					</tbody></table>
				</div>
