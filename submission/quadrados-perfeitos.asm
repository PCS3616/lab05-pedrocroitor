   
        LV  =0        ; Zera AC (AC = 0, CONTADOR = 0, RESULTADO = 0)
        MM  CONTADOR ; Salva CONTADOR = 0
        MM  RESULTADO ; Salva RESULTADO = 0
        LV  =1        ; AC = 1 (primeiro ímpar)
        MM  IMPAR    ; Salva o primeiro ímpar = 1
        LV  /100    ; Endereço inicial de armazenamento
        MM  PONTEIRO_MEM 
        SC  QUADRADOS 
        HM  =0        ; Para a máquina

@ /600
QUADRADOS LV  =0      ; Zera o resultado
          MM  TEMPORARIO
          MM  CONTADOR
          JZ  ARMAZENAR
LOOP      LV  =64
          SB  CONTADOR
          JZ  FIM_QUADRADOS
          LV  =2
          ML  CONTADOR
          SB  CONST_UM
          AD  TEMPORARIO
          MM  TEMPORARIO
ARMAZENAR SC  SALVAR
          SC  PROXIMO
          JP  LOOP
FIM_QUADRADOS RS  QUADRADOS

@ /700
SALVAR    LV  =2
          ML  CONTADOR
          AD  CMD_ARMAZENA
          MM  DESTINO
          LD  TEMPORARIO
DESTINO   K =0
          RS  SALVAR

@ /800
PROXIMO   LV  =1
          AD  CONTADOR
          MM  CONTADOR
          RS  PROXIMO

@ /900
; Definição de variáveis
CONTADOR      K =0
RESULTADO     K =0
TEMPORARIO    K =0
IMPAR         K =1
PONTEIRO_MEM  K /100
UM            K =1
DOIS          K =2
LIMITE        K =64
CONST_UM      K =1
CMD_ARMAZENA  K /9100
