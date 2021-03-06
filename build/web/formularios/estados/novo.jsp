
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Novo Estado</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/estilos.css"/>  
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        
        <script>
        $(document).ready(function(){
            $("input").focus(function(){
                $(this).css("background-color", "#f0f9ff");
            });
            $("input").blur(function(){
                $(this).css("background-color", "#ffffff");
            });
           
        });
        </script> 
    </head>

    <body>
        <div align="center">
        <h1>Novo Estado</h1>

        <form method="post"
              action="${pageContext.request.contextPath}/processaEstados">

            <input name="acao" type="hidden" value="criar"/>

            <table class="table-responsive">
                <tr>
                    <td class="alinharDireita">Nome:</td>
                    <td>
                        <input name="nome" type="text" size="20"/>
                    </td>
                </tr>
                <tr>
                    <td class="alinharDireita">Sigla:</td>
                    <td>
                        <input name="sigla" type="text" size="3"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="${pageContext.request.contextPath}/formularios/estados/listagem.jsp">Voltar</a>
                    </td>
                    <td class="alinharDireita">
                        <input type="submit" value="Salvar"/>
                    </td>
                </tr>
            </table>

        </form>
</div>
    </body>

</html>
