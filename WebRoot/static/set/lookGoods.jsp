<%@ page  pageEncoding="UTF-8"%>

				<div id="zhongxin" style="padding-top: 13px;">
					<table id="table_report" class="table table-striped table-bordered table-hover">
						
						
							<input name="ROLE_ID" id="role_id" value="<%=request.getParameter("goodsid") %>" type="hidden">
						<script type="text/javascript">
							var id = $("#role_id").val();
							$.ajaxSettings.async = false;
							$.getJSON("goods/selectGoods",{"id":id},function(data){
								var goods=data;
								$("#goodsname").html(goods.g_name);
								$("#g_createtime").html(goods.create_time);
								$("#goodsimg").attr("src","../SecondHandSystem/"+goods.g_img);
								$("#xiangqing").html(goods.text);
							});
						</script>
						<tbody>
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">商品名称:</td>
							<td>
								<strong><font id="goodsname" style="color:red; font-size:16px"></font></strong>
							</td>
						</tr>
						
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">图片:</td>
							<td>
								<div style="width:250px;height:250px;">
									<img id="goodsimg" style="width:250px;height:250px;"/>
								</div>
								
							</td>
						</tr>
						
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">商品详情:</td>
							<td>
								<textarea rows="3" cols="40" id="xiangqing" readonly="readonly" style="resize:none;"></textarea>
							</td>
						</tr>
						
						<tr>
							<td style="width:79px;text-align: right;padding-top: 13px;">发布时间:</td>
							<td>
								<font id="g_createtime" style="font-size:14px"></font>
							</td>
						</tr>
						<tr>
							<td style="text-align: center;" colspan="10">
								<a class="btn btn-mini btn-danger" onclick="closeTan()">OK</a>
							</td>
						</tr>
						
					</tbody></table>
				</div>

