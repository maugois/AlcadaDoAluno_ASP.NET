<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dadosPessoais.aspx.cs" Inherits="AlcadaDoAluno.Src.views.dadosPessoais" %>

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
    <title>Alçada do Aluno - Dados Pessoais</title>
</head>
<body>
    <form id="formDadosPessoais" runat="server">
        <main class="d-flex flex-column justify-content-center align-items-center bg-body-secondary">
            <section class="d-flex flex-column align-items-center justify-content-center bg-white border border-secondary shadow rounded-4 w-50 m-5 pt-4 pb-5">
                <div class="d-flex justify-content-around w-100 mb-4">
                    <div class="d-flex flex-column align-items-center justify-content-center gap-3">
                        <div class="bg-body-secondary rounded-circle p-5">
                            <p class="text-center fw-light">IMAGEM</p>
                        </div>

                        <div>
                            <button class="btn btn-secondary" type="button" data-bs-toggle="modal" data-bs-target="#modalImagem">Zoom</button>
                        </div>
                    </div>
                
                    <div class="d-flex flex-column align-items-center justify-content-center me-5">
                        <h2>Dados Pessoais</h2>
                        <p class="opacity-50 fw-semibold">Seja bem-vindo a plataforma</p>
                    </div>
                </div>

                <asp:Label ID="labMensagem" runat="server"></asp:Label>

                <div class="w-75">
                    <div class="row">
                        <div class="mb-4">
                            <div class="mb-3">
                                <label for="txtRa" class="form-label">RA:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtRa" runat="server" type="text" class="form-control" placeholder="Seu RA..." disabled aria-describedby="btnRa"></asp:TextBox>
                                    <button class="btn btn-outline-secondary" type="button" id="btnRa" data-bs-toggle="modal" data-bs-target="#modalRa">Editar</button>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="txtNome" class="form-label">Nome completo:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtNome" runat="server" type="text" class="form-control" placeholder="Seu nome completo..." disabled aria-describedby="btnNome"></asp:TextBox>
                                    <button class="btn btn-outline-secondary" type="button" id="btnNome" data-bs-toggle="modal" data-bs-target="#modalNome">Editar</button>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="txtRg" class="form-label">RG:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtRg" runat="server" type="text" class="form-control" placeholder="Seu RG..." disabled aria-describedby="btnRg"></asp:TextBox>
                                    <button class="btn btn-outline-secondary" type="button" id="btnRg" data-bs-toggle="modal" data-bs-target="#modalRg">Editar</button>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="txtCpf" class="form-label">CPF:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtCpf" runat="server" type="text" class="form-control" placeholder="Seu CPF..." disabled aria-describedby="btnCpf"></asp:TextBox>
                                    <button class="btn btn-outline-secondary" type="button" id="btnCpf" data-bs-toggle="modal" data-bs-target="#modalCpf">Editar</button>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="txtDataNasc" class="form-label">Data de nascimento:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtDataNasc" runat="server" class="form-control" disabled aria-describedby="btnDataNasc"></asp:TextBox>
                                    <button class="btn btn-outline-secondary" type="button" id="btnDataNasc" data-bs-toggle="modal" data-bs-target="#modalDataNasc">Editar</button>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="txtEmail" class="form-label">E-mail:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtEmail" runat="server" type="email" class="form-control" placeholder="Seu e-mail..." disabled aria-describedby="btnEmail"></asp:TextBox>                                
                                    <button class="btn btn-outline-secondary" type="button" id="btnEmail" data-bs-toggle="modal" data-bs-target="#modalEmail">Editar</button>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label for="txtSenha" class="form-label">Senha:</label>
                                <div class="input-group">
                                    <asp:TextBox ID="txtSenha" runat="server" type="password" class="form-control" placeholder="Sua senha..." disabled aria-describedby="btnSenha" value="************"></asp:TextBox>
                                    <button class="btn btn-outline-secondary" type="button" id="btnSenha" data-bs-toggle="modal" data-bs-target="#modalSenha">Editar</button>
                                </div>
                            </div>
                        </div>

                        <div class="d-flex justify-content-center">
                            <a href="./indexCli.aspx" class="btn btn-danger">Voltar</a>
                        </div>
                    </div>
                </div>
            </section>

            <div>
                <p>© Copyright 2023. Todos os direitos reservados.</p>
            </div>
        </main>

        <!-- Modal Ra -->
        <div class="modal fade" id="modalRa" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Alterar RA</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div runat="server" class="row">
                            <div class="mb-4">
                                <div class="mb-3">
                                    <label for="txtRaEditar" class="form-label">RA:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtRaEditar" runat="server" type="text" class="form-control" placeholder="Altere seu RA..." required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="btnFecharRa" runat="server" Text="Fechar" class="btn btn-secondary" data-bs-dismiss="modal" OnClick="btnFecharRa_Click" UseSubmitBehavior="false" />
                        <asp:Button ID="btnAlterarRa" runat="server" Text="Alterar" class="btn btn-primary" OnClick="btnAlterarRa_Click" UseSubmitBehavior="false" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Nome -->
        <div class="modal fade" id="modalNome" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Alterar Nome completo</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div runat="server" class="row">
                            <div class="mb-4">
                                <div class="mb-3">
                                    <label for="txtNomeEditar" class="form-label">Nome completo:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtNomeEditar" runat="server" type="text" class="form-control" placeholder="Altere seu nome..." required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="btnFecharNome" runat="server" Text="Fechar" class="btn btn-secondary" data-bs-dismiss="modal" OnClick="btnFecharNome_Click" UseSubmitBehavior="false" />
                        <asp:Button ID="btnAlterarNome" runat="server" Text="Alterar" class="btn btn-primary" OnClick="btnAlterarNome_Click" UseSubmitBehavior="false" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Rg -->
        <div class="modal fade" id="modalRg" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Alterar RG</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div runat="server" class="row">
                            <div class="mb-4">
                                <div class="mb-3">
                                    <label for="txtRgEditar" class="form-label">RG:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtRgEditar" runat="server" type="text" class="form-control" placeholder="Altere seu RG..." MaxLength="12" required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="btnFecharRg" runat="server" Text="Fechar" class="btn btn-secondary" data-bs-dismiss="modal" OnClick="btnFecharRg_Click" UseSubmitBehavior="false" />
                        <asp:Button ID="btnAlterarRg" runat="server" Text="Alterar" class="btn btn-primary" OnClick="btnAlterarRg_Click" UseSubmitBehavior="false" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Cpf -->
        <div class="modal fade" id="modalCpf" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Alterar CPF</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div runat="server" class="row">
                            <div class="mb-4">
                                <div class="mb-3">
                                    <label for="txtCpfEditar" class="form-label">CPF:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtCpfEditar" runat="server" type="text" class="form-control" placeholder="Altere seu CPF..." MaxLength="14" required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="btnFecharCpf" runat="server" Text="Fechar" class="btn btn-secondary" data-bs-dismiss="modal" OnClick="btnFecharCpf_Click" UseSubmitBehavior="false" />
                        <asp:Button ID="btnAlterarCpf" runat="server" Text="Alterar" class="btn btn-primary" OnClick="btnAlterarCpf_Click" UseSubmitBehavior="false" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Data Nascimento-->
        <div class="modal fade" id="modalDataNasc" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Alterar Data de nascimento</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div runat="server" class="row">
                            <div class="mb-4">
                                <div class="mb-3">
                                    <label for="txtDataNascEditar" class="form-label">Data de nascimento:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtDataNascEditar" runat="server" type="date" class="form-control" placeholder="Altere sua data de nascimento..." required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="btnFecharDataNasc" runat="server" Text="Fechar" class="btn btn-secondary" data-bs-dismiss="modal" OnClick="btnFecharDataNasc_Click" UseSubmitBehavior="false" />
                        <asp:Button ID="btnAlterarDataNasc" runat="server" Text="Alterar" class="btn btn-primary" OnClick="btnAlterarDataNasc_Click" UseSubmitBehavior="false" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Email -->
        <div class="modal fade" id="modalEmail" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Alterar E-mail</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div runat="server" class="row">
                            <div class="mb-4">
                                <div class="mb-3">
                                    <label for="txtEmailEditar" class="form-label">E-mail:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtEmailEditar" runat="server" type="email" class="form-control" placeholder="Altere seu e-mail..." required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="btnFecharEmail" runat="server" Text="Fechar" class="btn btn-secondary" data-bs-dismiss="modal" OnClick="btnFecharEmail_Click" UseSubmitBehavior="false" />
                        <asp:Button ID="btnAlterarEmail" runat="server" Text="Alterar" class="btn btn-primary" OnClick="btnAlterarEmail_Click" UseSubmitBehavior="false" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Senha -->
        <div class="modal fade" id="modalSenha" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Alterar Senha</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div runat="server" class="row">
                            <div class="mb-4">
                                <div class="mb-3">
                                    <label for="txtSenhaEditar" class="form-label">Senha:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtSenhaEditar" runat="server" type="password" class="form-control" placeholder="Altere sua senha..." required></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <asp:Button ID="btnFecharSenha" runat="server" Text="Fechar" class="btn btn-secondary" data-bs-dismiss="modal" OnClick="btnFecharSenha_Click" UseSubmitBehavior="false" />
                        <asp:Button ID="btnAlterarSenha" runat="server" Text="Alterar" class="btn btn-primary" OnClick="btnAlterarSenha_Click" UseSubmitBehavior="false" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Imagem -->
        <div class="modal fade" id="modalImagem" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5">Imagem maior</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>

                    <div class="modal-body">
                        <div class="bg-body-secondary rounded-circle p-5">
                            <p class="text-center fw-light">IMAGEM</p>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<!-- Jquery -->
<script type="text/javascript" src="../../Scripts/jquery-3.4.1.js"></script>
<!-- Bootstrap javaScript -->
<script type="text/javascript" src="../../Assets/js/bootstrap.js"></script>
<!-- Jquery InputMask -->
<script type="text/javascript" src="../../Scripts/inputmask/jquery.inputmask.js"></script>
<script>
    $(document).ready(function () {
        $("#txtCpfEditar").inputmask('999.999.999-99');
        $("#txtRgEditar").inputmask('99.999.999-9');
        $("#txtDataNasc").inputmask('99/99/9999');
    });
</script>
</html>