<!DOCTYPE html>
<html>
<head>
   <title>api 列表</title>
   <meta http-equiv="Content-Type" content="text/html;charset=gbk" />
   <script src="/jquery/jquery-2.1.3.min.js"></script>
   <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css"/>
   <script src="/bootstrap/js/bootstrap.min.js"></script>

   <link rel="stylesheet" href="/css/kop.css"/>
</head>
<body>
	<div class="container">
		<div class="panel panel-primary">
		  <div class="panel-heading">账号列表</div>
		  	<div class="panel-body">
				<div class="kop-list-select">
					<div class="kop-list-select-left">

					</div>
					<div class="kop-list-select-right">
						<div class="btn-group">
							<a class="btn btn-primary" href="/admin/account/edit" role="button">添加用户</a>
						</div>
					</div>
				</div>
				<br/>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>账号</th>
							<th>昵称</th>
							<th>角色</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<#if (total>0)>
						<#list accounts as acc>
						<tr>
							<td><#if acc.account??> ${acc.name}</#if></td>
							<td><#if acc.realName??> ${acc.nickName}</#if></td>
							<td><#if acc??>${acc.role}</#if></td>
							<td>
							<a href="/admin/account/edit?accountId=${acc.id}">修改权限</a>
							</td>
                            <td>
                                <a href="">删除</a>
                            </td>
						</tr>
						</#list>
						</#if>
					</tbody>
				</table>
			</div>
		</div>
		<#if (total>0)>
		<#assign pages=(total/limit+1)?floor>
			<#if (pages>1)>
			<#assign c=(offset/limit+1)?floor>
			<nav>
			  <ul class="pagination">
				<#if (c>1)>
				    <li>
				  		<#assign pp=(c-1)*limit>
				      <a href="/admin/accounts?roleId=${roleId}&limit=${limit}&offset=${pp}" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
			    </#if>
			   	<#list 1..pages as p>
				   	<#assign off=(p-1)*limit>
				   	<#if off==offset>
						<li class="active"><a>${p}</a></li>
				   	<#else>
						<li><a href="/admin/accounts?roleId=${roleId}&limit=${limit}&offset=${off}">${p}</a></li>
				   	</#if>
			    </#list>
				
			    <#if (c<pages)>
				    <li>
				    <#assign p=(pages-1)*limit>
				      <a href="/admin/accounts?roleId=${roleId}&limit=${limit}&offset=${p}" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
			    </#if>
			  </ul>
			</nav>
			</#if>
		</#if>
	</div>
</body>
</html>