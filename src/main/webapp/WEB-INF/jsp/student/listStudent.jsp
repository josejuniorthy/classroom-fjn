<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <jsp:include page="../common/head.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/assets/css/home.css" rel="stylesheet"/>
        <title>Lista de Aluno</title>
    </head>
    <body>
        <%--menu--%>
        <jsp:include page="../common/menu.jsp"></jsp:include>   


        <%--corpo--%>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Lista de Aluno</h1>                      
            </div>
            <div class="form-group">
                <form action="${pageContext.request.contextPath}/estudante/busca" method="post" class="form-inline mt-2 mt-md-0">
                    <input id="studentSearch" name="studentName" class="form-control mr-sm-2" type="text" placeholder="Buscar Aluno" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit"name="action">Buscar</button>                   
                </form> 
            </div>
            <div>
                <table class="table table-striped">
                    <thead>                       
                    <th scope="col">NOME</th>
                    <th scope="col">RG</th>
                    <th scope="col">IDADE</th>
                    <th scope="col">TELEFONE</th>
                    <th scope="col">CIDADE</th>
                    <th scope="col">SEXO</th>
                    <th scope="col">TURMA</th>
                    <th scope="col">AÇÕES</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="m" items="${it}">
                            <tr>
                                <td >${m.name}</td>
                                <td>${m.rg}</td>
                                <td>${m.age}</td>
                                <td>${m.telefone}</td>
                                <td>${m.cidade}</td>
                                <td>${m.sexo}</td>
                                <td>${m.turma}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/estudante/editar/${m.id}" class="btn btn-outline-info">Editar</a>
                                    <a href="${pageContext.request.contextPath}/estudante/remover/${m.id}" class="btn btn-outline-danger">Remover</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

            </div>
            <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
        </main>
        <jsp:include page="../common/js.jsp"></jsp:include>
    </body>
</html>
