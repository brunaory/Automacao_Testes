class SiteOrangeHRM
    include RSpec::Matchers
    include Capybara::DSL

    def initialize
        @orange = OrangeHRMMapObjects.new
    end  

    def acessa_site_orange
        visit 'http://opensource.demo.orangehrmlive.com/'
    end

    def insere_dados_acesso
        @orange.txt_username.set $usuario_orange
        @orange.txt_senha.set $senha_orange
    end

    def insere_dados_incorretos
        @orange.txt_username.set $usuario_incorreto
        @orange.txt_senha.set $senha_incorreta
    end

    def aciona_login
        @orange.btn_login.click
    end

    def tela_inicial
        expect(page).to have_selector('#welcome', exact_text: $tela_inicial)
    end

    def informa_login_invalido
        expect(page).to have_selector('#spanMessage', exact_text: $login_invalido)
    end
end
        