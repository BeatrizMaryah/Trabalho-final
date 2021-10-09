<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="sidebar.css">
</head>
<body>

<div class="header"></div>
        <input type="checkbox" class="openSidebarMenu" id="openSidebarMenu">
        <label for="openSidebarMenu" class="sidebarIconToggle">
            <div class="spinner diagonal part-1"></div>
            <div class="spinner horizontal"></div>
            <div class="spinner diagonal part-2"></div>
        </label>

    <div id ="sidebarMenu">
        <ul class="sidebarMenuInner">
            <li>
                <a href="<%=request.getContextPath()%>/nova-turma" target="_self">
                <i class="fi fi-rr-edit"></i>
                    <span class="links_name">Cadastrar Turma</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/listar-turmas" target="_self">
                    <i class="fi-rr-scale"></i>
                    <span class="links_name">Turmas</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/novo-aluno" target="_self">
                    <i class="fi fi-rr-user-add"></i>
                    <span class="links_name">Cadastrar Aluno</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/listar-alunos" target="_self">
                    <i class="fi fi-rr-graduation-cap"></i>
                    <span class="links_name">Alunos</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/nova-disciplina" target="_self">
                    <i class="fi fi-rr-folder-add"></i>
                    <span class="links_name">Cadastrar Disciplina</span>
                </a>

            </li>
            <li>
                <a href="<%=request.getContextPath()%>/listar-disciplinas" target="_self">
                    <i class="fi fi-rr-folder"></i>
                    <span class="links_name">Disciplinas</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/novo-professor" target="_self">
                    <i class="fi-rr-user-add"></i>
                    <span class="links_name">Cadastrar Professor</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/listar-professores" target="_self">
                    <i class="fi-rr-user"></i>
                    <span class="links_name">Professores</span>
                </a>
            </li>
            <li>
               	<a href="<%=request.getContextPath()%>/inicio" target="_self">
                    <i class="fi fi-rr-sign-in"></i>
                    <span class="links_name">Sair</span>
                </a>

            </li>
        </ul>
    </div>
</body>
</html>