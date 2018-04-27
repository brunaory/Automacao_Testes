Dado('que eu acesse o site Neon') do
    @neon = SiteNeon.new
    @neon.acessa_site_neon
end

Quando("acesso a página de perguntas do site Neon") do
    @neon.acessa_perguntas?
end

Quando("abro a apção sobre o Neon") do
    @neon.acessa_sobre
end

Quando("aciono a pergunta que responde se o Neon é apenas um cartão") do
    @neon.acessa_opcao_pergunta
end

Então("vejo o texto de resposta") do
    @neon.resposta
end
