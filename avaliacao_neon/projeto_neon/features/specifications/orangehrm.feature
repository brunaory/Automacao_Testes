#language: pt
Funcionalidade: Avaliação Neon

Como usuário do sistema Orange HRM
Quero realizar o login no site
Para ter acesso as funcionalidades disponiveis

Contexto: Acessar o site Orange HRM
    Dado que eu acesse o site Orange HRM

@login_valido
Cenário: Login autorizado
    Quando realizo o login no site com dados de acesso válidos
    Então vejo a tela inicial do site

@login_invalido
Cenário: Login não autorizado por dados invalidos
    Quando informo dados de acesso incorretos
    E tento realizar o login no sistema
    Então o login não é autorizado