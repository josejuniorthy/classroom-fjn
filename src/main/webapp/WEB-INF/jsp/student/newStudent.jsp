<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../common/head.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/assets/css/home.css" rel="stylesheet"/>
        <title>Cadastrar Aluno</title>
    </head>
    <body>
        <%--menu--%>
        <jsp:include page="../common/menu.jsp"></jsp:include>   


        <%--corpo--%>
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Cadastrar Aluno</h1>                      
            </div>
            <div>
                <form class="col s12" action="novo" method="post">              
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label class="active" for="name">Nome</label>
                            <input type="text" id="name" name="student.name" class="form-control" placeholder="Nome">
                        </div>                    
                        <div class="form-group col-md-6">
                            <label for="turma">Turma</label>
                            <select class="form-control" id="turma" name="student.turma">
                                <option selected>Selecionar...</option>
                                <option>1º Ano</option>
                                <option>2º Ano</option>
                                <option>3º Ano</option>
                            </select>
                        </div>                      
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6 ">
                            <label class="active" for="rg">RG</label>
                            <input type="text" id="rg" name="student.rg" class="form-control" placeholder="RG">
                        </div>                
                        <div class="form-group col-md-6">
                            <label class="active" for="age">Idade</label>
                            <input type="text" id="age" name="student.age" class="form-control" placeholder="Idade">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label class="active" for="telefone" >Telefone</label>
                            <input type="text" id="telefone" name="student.telefone" class="form-control">
                        </div>                        
                        <div class="form-group col-md-6">
                            <label for="sexo">Sexo</label>
                            <select class="form-control" id="sexo" name="student.sexo">
                                <option selected>Selecionar...</option>
                                <option>Macho</option>
                                <option>Muié</option>
                                <option>Outros</option>
                            </select>
                        </div>                     
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label class="active" for="cidade">Cidade</label>
                            <input type="text" id="cidade" name="student.cidade" class="form-control" placeholder="Cidade">
                        </div>
                    </div>               
                    <button type="submit" class="btn btn-primary">Cadastrar Aluno</button>
                </form>
            </div>
            <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
        </main>

    </body>
</html>
