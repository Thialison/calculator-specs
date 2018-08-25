Dado("que esteja na tela incial da calculadora") do
    @home = Home.new
    @home.validar_home
end

Quando("multiplicar {int} por {int}") do |a, b|
    
    @home.multiplica(a, b)
    # id("digit_#{a}").click
    # id('op_mul').click
    # id("digit_#{b}").click
    # id('eq').click
end

Então("devo visualizar o {int} como resultado") do |result|
    fail 'O valor não foi apresentado corretamente' unless id('result').text.eql? result.to_s
end
