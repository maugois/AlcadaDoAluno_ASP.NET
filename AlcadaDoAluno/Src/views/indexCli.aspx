<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="indexCli.aspx.cs" Inherits="AlcadaDoAluno.Src.views.indexCli" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="pt-BR">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="../../Assets/styles/bootstrap.css">
    <!-- Nosso estilo -->
    <link rel="stylesheet" href="../../Assets/styles/style.css">
    <!-- Icons do Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!-- Icons do FontAwansome -->
    <script src="https://kit.fontawesome.com/687b2e222f.js" crossorigin="anonymous"></script>
    <!-- Icons do boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <title>Alçada do Aluno - Aréa do Aluno</title>
</head>
<body>
    <form id="form1" runat="server">
    <main class="d-flex flex-column justify-content-center align-items-center bg-body-secondary vh-100">
        <section class="d-flex flex-column align-items-center justify-content-center bg-white border border-secondary shadow rounded-4 w-50">
            <div>
                <div class="bg-body-secondary mt-3 rounded-circle p-5">
                    <p class="text-center fw-light">LOGO</p>
                </div>
            </div>

            <div class="mt-3">
                <p class="text-center fs-5 fw-semibold">Seja bem-vindo a plataforma <br> (nome usuário)</p>
            </div>

            <div class="d-flex flex-column gap-3 m-4">
                <asp:LinkButton ID="LinkButton1" runat="server" href="./dadosPessoais.aspx" class="btn btn-primary">Dados Pessoais</asp:LinkButton>
                <asp:LinkButton ID="LinkButton2" runat="server" href="" class="btn btn-secondary">Sair</asp:LinkButton>
                <asp:LinkButton ID="LinkButton3" runat="server" href="" class="btn btn-danger">Deletar Conta</asp:LinkButton>
            </div>
        </section>

        <div class="position-absolute bottom-0">
            <p>© Copyright 2023. Todos os direitos reservados.</p>
        </div>
    </main>
    </form>
</body>
<!-- Jquery -->
<script type="text/javascript" src="../../Assets/js/jquery-3.7.1.js"></script>
<!-- Bootstrap javaScript -->
<script type="text/javascript" src="../../Assets/js/bootstrap.js"></script>
</html>