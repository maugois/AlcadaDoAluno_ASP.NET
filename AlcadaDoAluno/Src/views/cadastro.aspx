<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastro.aspx.cs" Inherits="AlcadaDoAluno.Src.views.cadastro" %>

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
    <title>Alçada do Aluno - Cadastro</title>
</head>
<body>
    <main class="d-flex flex-column justify-content-center align-items-center bg-body-secondary">
        <section class="d-flex flex-column align-items-center justify-content-center bg-white border border-secondary shadow rounded-4 w-50 m-5 pt-4 pb-5">
            <div class="bg-body-secondary rounded-circle p-5">
                <p class="text-center fw-light">LOGO</p>
            </div>

            <div>
                <form action="" id="form1" runat="server" class="row">
                    <div class="mb-4">
                        <div class="mb-3">
                            <label for="txtRa" class="form-label">RA:</label>
                            <input type="text" id="txtRa" name="" class="form-control" placeholder="Digite seu RA...">
                        </div>

                        <div class="mb-3">
                            <label for="txtNome" class="form-label">Nome completo:</label>
                            <input type="text" id="txtNome" name="" class="form-control" placeholder="Digite seu nome completo...">
                        </div>

                        <div class="mb-3">
                            <label for="txtRg" class="form-label">RG:</label>
                            <input type="text" id="txtRg" name="" class="form-control" placeholder="Digite seu RG...">
                        </div>

                        <div class="mb-3">
                            <label for="txtCpf" class="form-label">CPF:</label>
                            <input type="text" id="txtCpf" name="" class="form-control" placeholder="Digite seu CPF...">
                        </div>

                        <div class="mb-3">
                            <label for="txtDataNasc" class="form-label">Data de nascimento:</label>
                            <input type="date" id="txtDataNasc" name="" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label for="txtEmail" class="form-label">E-mail:</label>
                            <input type="email" id="txtEmail" name="" class="form-control" placeholder="Digite seu e-mail...">
                        </div>

                        <div class="mb-3">
                            <label for="txtSenha" class="form-label">Senha:</label>
                            <input type="password" id="txtSenha" name="" class="form-control" placeholder="Digite sua senha...">
                        </div>
                    </div>

                    <div class="d-flex justify-content-between">
                        <a href="./index.aspx" class="btn btn-danger">Voltar</a>
                        <input type="submit" value="Cadastrar" class="btn btn-primary">
                    </div>
                </form>
            </div>
        </section>

        <div>
            <p>© Copyright 2023. Todos os direitos reservados.</p>
        </div>
    </main>
</body>
<!-- Jquery -->
<script type="text/javascript" src="../../Assets/js/jquery-3.7.1.js"></script>
<!-- Bootstrap javaScript -->
<script type="text/javascript" src="../../Assets/js/bootstrap.js"></script>
</html>