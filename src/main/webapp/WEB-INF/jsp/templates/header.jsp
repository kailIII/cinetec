<%@ include file="/WEB-INF/jsp/includes.jsp" %>
<div>
	<header>
		
<!-- 					<div id="next" style="position: absolute; right:0; top:0; margin:auto 0;">PROXIMO</div> -->
<!-- 					<div id="prev" style="position: absolute; left:0; top:0; margin:auto 0;">ANTERIOR</div> -->
		<nav id="main-nav">
				<ul>
					<li><a href="#">Opção 1</a></li>
					<li><a href="#">Opção 2</a></li>
					<li><a href="#">Opção 3</a></li>
					<li><a href="#">Opção 4</a></li>
					<li><a href="#">Opção 5</a></li>
					<li><a href="#">Opção 6</a></li>
				</ul>
				<div id="login">
					<c:if test="${usuarioLogado.userName != null}" >
						Bem vindo, ${usuarioLogado.userName}
					</c:if>
					<div>LOGIN</div>
					<form action="efetuaLogin" id="form-login" class="form1" method="POST">
						<input type="text" name="username" placeholder="Nome de usuário"/><br/>
						<input type="password" name="password"/><br/>
						<a href="cadastro">Cadastre-se</a><input type="submit" value="Entrar"/>
					</form>
				</div>	
		</nav>
		<div id="highlights">
			<img style="width:100%;height:auto;" src="res/images/rei-leao.png"/>
					<div class="hl-text">
						<h2>Lion King</h2>
						<h3>Every friday, at 20:00</h3>
						<h4>3d</h4>
					</div>		
			<div id="hdr-logo">
				<a href="#">Cinetec - Logo</a>
			</div>
			<div id="hdr-search">
				<form id="search-form" action=""> 
					<i class="icon-left fa fa-search"></i><label style="font-size:20px">Buscar filmes</label><br/>
					<input type="text" placeholder="Palavra-chave" /><br>
					<select>
						<option>Opção 1</option>
						<option>Opção 1</option>
						<option>Opção 1</option>
					</select>
					<br>
					<input type="submit" />
				</form>
			</div>
</div>
	</header>
</div>