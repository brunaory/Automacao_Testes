class SiteNeon 
    include RSpec::Matchers
    include Capybara::DSL

    def initialize
        @neon = NeonMapObjects.new
    end  

    def acessa_site_neon
        visit 'https://www.banconeon.com.br/'
    end

    def acessa_perguntas?
       @neon.lk_perguntas.click
    end

    def acessa_sobre
        @neon.btn_sobre.click
    end

    def acessa_opcao_pergunta
        @neon.btn_opcao.click
    end

    def resposta
        $texto = 'Não! O Neon é muito mais que um cartão. Somos um banco. Com uma conta Neon você pode fazer pagamentos, transferências, receber grana via boletos e ainda usar seu cartão de débito em qualquer lugar do mundo. Tudo isso sem cobrar taxas absurdas, filas e sem aquela papelada e burocracia que os bancos antigos costumam ter.'
        expect(page).to have_text($texto)
    end

end