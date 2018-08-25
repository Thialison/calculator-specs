#================Classe Home Sreen====================================#
class Home <Appium::Driver


    #===================OBJETOS SCREEN=================================#
    def initialize
    #visor
    @visor = "result"

    #botoes
    @botao_0 = "digit_0"
    @botao_1 = "digit_1"
    @botao_2 = "digit_2"
    @botao_3 = "digit_3"
    @botao_4 = "digit_4"
    @botao_5 = "digit_5"
    @botao_6 = "digit_6"
    @botao_7 = "digit_7"
    @botao_8 = "digit_8"
    @botao_9 = "digit_9"
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



end