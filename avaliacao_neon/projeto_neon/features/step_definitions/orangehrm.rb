Dado("que eu acesse o site Orange HRM") do
    @orange = SiteOrangeHRM.new
    @orange.acessa_site_orange
end

#@login_valido
Quando("realizo o login no site com dados de acesso válidos") do
    @orange.insere_dados_acesso
    @orange.aciona_login
end

Então("vejo a tela inicial do site") do
  @orange.tela_inicial
end

#@login_invalido
Quando("informo dados de acesso incorretos") do
    @orange.insere_dados_incorretos
end

Quando("tento realizar o login no sistema") do
    @orange.aciona_login
    @orange.insere_dados_incorretos
end

Então("o login não é autorizado") do
    @orange.informa_login_invalido
end

