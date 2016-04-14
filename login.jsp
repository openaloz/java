<%-- 
    Document   : login
    Created on : 14-abr-2016, 19:13:32
    Author     : Omar Peñaloza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
	
	
    <body>
         <form name="form" method="post" action="">
		<table width="200" border="0" align="center">
          <tr>
            <td colspan="2" align="center"><strong>Ingreso</strong></td>
          </tr>
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td width="80"><strong>Usuario: </strong></td>
            <td width="104"><label>
              <input name="user" type="text" id="user" size="15" onkeypress="return Numeros(event);">
            </label></td>
          </tr>
          <tr>
            <td><strong>Contraseña:</strong></td>
            <td><input name="pwd" type="text" id="pwd" size="15"></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" align="center"><label>
              <input type="submit" name="Ingresar" value="Ingresar" onClick="javascript:Aceptar();">
            </label></td>
          </tr>
        </table>
       
        </form>
        <h1>&nbsp;</h1>
    </body>
</html>

<script>
function Aceptar()
{
	if(form.user.value=="")
	{
		alert("Ingrese nombre de usuario");
		form.user.focus;
		return;
	}
	
	if(form.pwd.value=="")
	{
		alert("Ingrese contraseña");
		form.pwd.focus;
		return;
	}		
	
	alert("Logueado exitosamente")
}


function Numeros(e)
{
   var keynum = window.event ? window.event.keyCode : e.which;
   if ((keynum == 8) || (keynum == 46))
        return true;
    return /\d/.test(String.fromCharCode(keynum));
}


</script>
