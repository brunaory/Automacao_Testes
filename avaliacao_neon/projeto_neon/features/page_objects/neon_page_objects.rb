class NeonMapObjects < SitePrism::Page
    element :lk_perguntas, 'body > header > div > nav > ul > li:nth-child(1) > a'
    element :btn_sobre, 'body > main > article > div.container > article > section:nth-child(1) > header > button'
    element :btn_opcao, 'body > main > article > div.container > article > section:nth-child(1) > article > ul > li:nth-child(4) > header > button'
end