          SC  QUADRADOS 
          HM  =0        

QUADRADOS K =0
LOOP      LD ITERACAO    
          ML MULTIPLO     
          AD INCREMENTO       
          AD QUADRADO   
          MM QUADRADO   
          LD ENDERECO     
          AD MULTIPLO     
          MM ENDERECO     
          AD OP_COPIA    
          MM ARMAZENA 
          LD QUADRADO   
ARMAZENA  K  /0000
          LD ITERACAO    
          AD INCREMENTO       
          MM ITERACAO    
          SB CONTADOR    
          JZ FIM
          JP LOOP
FIM       RS QUADRADOS

    
@ /CCC
INCREMENTO K =1        
MULTIPLO   K =2        
ITERACAO   K =0        
ENDERECO   K INICIO    
QUADRADO   K =0        
OP_COPIA   MM /000     
CONTADOR   K =64  

@ /100
INICIO     K =0 