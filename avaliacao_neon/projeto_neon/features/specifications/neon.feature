#language: pt
Funcionalidade: Avaliação Neon

Como cliente do Banco Neon
Quero navegar pelo site
Para obter mais informações sobre a empresa

Contexto: Acessar o site Neon

    Dado que eu acesse o site Neon
    
@texto_resp
Cenário: Validar texto - Página perguntas

    Quando acesso a página de perguntas do site Neon 
    E abro a apção sobre o Neon
    E aciono a pergunta que responde se o Neon é apenas um cartão
    Então vejo o texto de resposta