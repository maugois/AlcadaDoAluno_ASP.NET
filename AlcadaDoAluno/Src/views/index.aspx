<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AlcadaDoAluno.Src.views.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-BR">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../../Assets/styles/bootstrap.css">
    <!-- Icons do Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- Icons do FontAwansome -->
    <script src="https://kit.fontawesome.com/687b2e222f.js" crossorigin="anonymous"></script>
    <!-- Icons do boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <title>Alçada do Aluno</title>
</head>
<body>
    <main class="d-flex flex-column justify-content-center align-items-center bg-body-secondary vh-100">
        <section class="d-flex flex-column align-items-center justify-content-center bg-white border border-secondary shadow rounded-4 w-50 h-50">
            <div class="bg-body-secondary mt-3 rounded-circle p-5">
                <p class="text-center fw-light">LOGO</p>
            </div>

            <div class="d-flex flex-column gap-3 m-4">
                <a href="./login.aspx" class="btn btn-primary">Entrar</a>
                <a href="./cadastro.aspx" class="btn btn-secondary">Cadastrar</a>
            </div>
        </section>

        <div class="position-absolute bottom-0">
            <p>© Copyright 2023. Todos os direitos reservados.</p>
        </div>
    </main>
</body>
<!-- Jquery -->
<script type="text/javascript" src="../../Scripts/jquery-3.4.1.js"></script>
<!-- Bootstrap javaScript -->
<script type="text/javascript" src="../../Assets/js/bootstrap.js"></script>
</html>