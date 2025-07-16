//Utilizando o REPEAT para encontrar o nome de vários usuario pelo id seguidamente
DEF VAR i-custnum AS INTEGER NO-UNDO.
REPEAT:
    PROMPT-FOR i-custnum.
    FIND FIRST customer 
    WHERE customer.custnum = INPUT i-custnum NO-LOCK NO-ERROR.
    DISPLAY customer.NAME
            customer.address
            WITH 2 COLUMN.
            
    IF NOT AVAIL customer THEN
    DO:
        MESSAGE "Não existe esse código'" 
        INPUT i-custnum "'. tente novamente" 
        VIEW-AS ALERT-BOX ERROR.
    END.
    ELSE DO:
        MESSAGE "encontrei o registro com esse código'" 
        INPUT i-custnum customer.NAME "'." 
        VIEW-AS ALERT-BOX.
        
        MESSAGE "Tecle enter para continuar" 
        VIEW-AS ALERT-BOX.

    END.
END.
