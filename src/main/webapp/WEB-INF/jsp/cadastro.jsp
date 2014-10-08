<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<div id="interface">

            <header id="cabecalho">

            <hgroup>
            <h1>Cinetech</h1>
            <h2>A revolução na compra de ingressos</h2>
            </hgroup>

            
                
            <nav  id="menu">
           
            </nav>
         

            </header>

            </header>





<form id="usuario"  >
   <fieldset id="usuario"> <legend>Identificação do Usuário</legend>
       <label for="cNome"> <p>Nome:</label><input type="text" name="tNome" id="cNome" size="20" maxlength="10" placeholder="nome completo"/></p>
       <p>Senha:<input type="password" name="tSenha" id="cSenha"size="20" maxlength="10" placeholder=" senha de 10 digitos"/></p>
       <p>E-mail: <input type="email" name="tMail" id="cMail"size="20" maxlength="10" placeholder=" seu email"/></p>
       <fieldset id="sexo"><legend>Sexo:</legend>
                 <input type="radio" name="tSexo"  id="cMasc" checked/> <label for="cMasc">Masculino</label><br/>
                  <input type="radio" name="tSexo"  id="cFem"/>  <label for="cFem">Feminino</label>
              </fieldset>
       <p>Data de Nascimento:<input type="date" name="tNasc"id="cNasc" /> </p>
   </fieldset>

<fieldset id="endereco"><legend>Endereço do Usuário</legend>
   <p> Logradouro:<input type="text" name="tRua" id="cRua" size="13" maxlength="80" placeholder="rua,av,trav..."></input></p>
  <p>  Número:<input type="number" name="tNum" id="cNum" min="0" max="99999"/></p>
    <p>Estado:<select name="tEst" id="cEst">
         
      </select></p>
   
    <p>Cidade:<input type="text" name="tNome" id="cNome" size="20" maxlength="10" placeholder="sua cidade" list="cidades"/></p>
    

</fieldset>






<input type="submit" value="Enviar" />


</form>
<footer id="rodape">
            <p>Copyright &copy; 2014 - by 905Team</br>
            <a href="http://facebook.com" target="_blank" >Facebook | <a href="http://twiter.com" target="_blank">Twitter</p>
        </footer>


</div>
</body>
</html>