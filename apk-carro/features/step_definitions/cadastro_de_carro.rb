Quando(/^eu acesso o cadastro de carros$/) do
    touch("* id:'cadastrar'")
end

Quando(/^insiro os dados de um veículo$/) do
    enter_text "* id:'modelo'", "Corsa"
    enter_text "* id:'ano'", "2012"
    enter_text "* id:'placa'", "CMM4808"
    enter_text "* id:'km'", "130.000"
    enter_text "* id:'valor'", "12.000,00"
    touch("* id:'cadastrar'")
end

Então(/^posso fazer um cadastro de carro$/) do
    wait_for_element_exists(“* id:’...
end
