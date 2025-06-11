;---------------------------------------------------
; Programa:NumeroDecrecente
; Autor:Vinicius
; Data:11/06/2025
;---------------------------------------------------
   ORG 0   ; pseudo - instrução: indica onde inicia o programa dentro da memória
   LDA VAL ; carrega no acumulador o conteudo que esta guardado na variavel VAL

LACO:  OUT 0    ; mostra na saida o conteudo do acumulador
       SUB PASSO ;decrementa do acumulador a quantia de armazenamento pela variavel PASSO
       JN FIM    ; testa se o valor no acumulador chegou a 0: se sim salta para FIM
       STA 60    ; se nao chegou ao fim guarda o val do acumulador no end. 60
       JMP LACO  ; salta para label chamada LACO


FIM:  HLT   ; para a execução do programa

VAL:  DB 7   ;cria na memória uma constante com o valor 7
PASSO: DB 1  ;carrega na memória uma constante com valor 1