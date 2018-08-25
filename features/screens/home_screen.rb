#================Classe Home Sreen====================================#
class Home <Appium::Driver


    #===================OBJETOS SCREEN=================================#
    def initialize
    #visor
    @visor = "result"

    #botoes
    @botao_mais = "op_add"
    @botao_menos = "op_sub"
    @botao_div = "op_div"
    @botao_mult = "op_mul"
    @botao_igual = "eq"
    #Botoes Formula
    @botao_formulas ="arrow"
    @botao_inv ="toggle_inv"
    @botao_deg ="toggle_mode"
    @botao_por ="op_pct"
    @botao_sin ="fun_sin"
    @botao_cos ="fun_cos"
    @botao_tan ="fun_tan"
    @botao_in ="fun_ln"
    @botao_log ="fun_log"
    @botao_exc ="op_fact"
    @botao_pi ="const_pi"
    @botao_e ="const_e"
    @botao_up ="op_pow"
    @botao_lp ="lparen"
    @botao_rp ="rparen"
    @botao_raiz ="op_sqrt"
    end
    
    #=====================METODOS=======================================#
    def validar_home
        id(@visor).displayed?
    end

    def multiplica(num1, num2)
        toca_digito(num1)
        id(@botao_mult).click
        toca_digito(num2)
        id(@botao_igual).click
    end

    def toca_digito(valor)
        valor = valor.to_s
        valor.each_char do |digito|
            id("digit_#{digito}").click
        end
    end

end