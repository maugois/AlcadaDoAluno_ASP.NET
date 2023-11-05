<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AlcadaDoAluno.Src.views.login" %>

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
    <main class="d-flex flex-column justify-content-center align-items-center bg-body-secondary vh-100">
        <section class="d-flex flex-column align-items-center justify-content-center bg-white border border-secondary shadow rounded-4 w-50 h-75">
            <div class="bg-body-secondary rounded-circle p-5">
                <p class="text-center fw-light">LOGO</p>
            </div>

            <div>
                <form id="form1" runat="server" class="row">
                    <div class="mb-4">
                        <div class="mb-3">
                            <label for="txtRa" class="form-label">RA:</label>
                            <asp:TextBox ID="txtRa" runat="server" Type="text" class="form-control" placeholder="Digite seu RA..." required></asp:TextBox>
                        </div>
    
                        <div class="mb-3">
                            <label for="txtSenha" class="form-label">Senha:</label>
                            <asp:TextBox ID="txtSenha" runat="server" Type="password" class="form-control" placeholder="Digite sua senha..." required></asp:TextBox>
                        </div>
                    </div>

                    <div class="d-flex justify-content-between">
                        <asp:HyperLink ID="linkIndex" href="./index.aspx" class="btn btn-danger" runat="server">Voltar</asp:HyperLink>
                        <asp:Button ID="btnEnviar" class="btn btn-primary" runat="server" Text="Confirmar" OnClick="btnEnviar_Click" />
                    </div>
                </form>
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