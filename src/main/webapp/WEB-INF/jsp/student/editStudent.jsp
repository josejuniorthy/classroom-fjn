<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../common/head.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/assets/css/home.css" rel="stylesheet"/>
        <title>Editar Aluno</title>
    </head>
    <body>
        <%--menu--%>
        <jsp:include page="../common/menu.jsp"></jsp:include>   


        <%--corpo--%>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Editar Aluno</h1>                      
            </div>
            <div>
                <form class="col s12" action="${pageContext.request.contextPath}/estudante/atualizar" method="post">
                    <div>
                        <input type="hidden" name="student.id" value="${student.id}">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label class="active" for="name">Nome</label>
                            <input type="text" id="name" name="student.name" value="${student.name}" class="form-control" >
                        </div>                    
                        <div class="form-group col-md-6">
                            <label for="turma">Turma</label>
                            <select selected class="form-control" id="turma" name="student.turma" >                             
                                <option style="font-weight: bold;">${student.turma}</option>
                                <option>1º Ano</option>
                                <option>2º Ano</option>
                                <option>3º Ano</option>
                            </select>
                        </div>                      
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6 ">
                            <label class="active" for="rg">RG</label>
                            <input type="text" id="rg" name="student.rg" value="${student.rg}" class="form-control">
                        </div>                
                        <div class="form-group col-md-6">
                            <label class="active" for="age">Idade</label>
                            <input type="text" id="age" name="student.age" value="${student.age}" class="form-control" >
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label class="active" for="telefone" >Telefone</label>
                            <input type="text" id="telefone" name="student.telefone" value="${student.telefone}" class="form-control">
                        </div>                        
                        <div class="form-group col-md-6">
                            <label for="sexo">Sexo</label>
                            <select class="form-control" id="sexo" name="student.sexo">
                                <option style="font-weight: bold;">${student.sexo}</option>
                                <option>Macho</option>
                                <option>Muié</option>
                                <option>Outros</option>
                            </select>
                        </div>                     
                    </div>   
                    <div class="form-row">
                        <div class="form-group col-md-3">
                            <label class="active" for="cidade">Cidade</label>
                            <input type="text" id="cidade" name="student.cidade" value="${student.cidade}"  class="form-control">
                        </div>
                    </div>               
                    <button class="btn btn-primary" type="submit" name="action">Editar Aluno</button>
                </form>
            </div>
            <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
        </main>

    </body>
</html>
