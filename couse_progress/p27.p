//Aqui ele encontra o registro do usuario e deleta, se n�o encontrar exibe 

DEF VAR i-custnum AS INTEGER NO-UNDO.
REPEAT:
    PROMPT-FOR i-custnum.
    FIND FIRST customer 
       WHERE customer.custnum = INPUT i-custnum NO-ERROR.
    IF NOT AVAIL customer THEN
    DO:
        MESSAGE "N�o existe esse c�digo'" 
        INPUT i-custnum "'. tente novamente" 
        VIEW-AS ALERT-BOX ERROR.
    END.
    ELSE DO:
        DISPLAY customer.NAME
                customer.address
                WITH 2 COLUMN.
        MESSAGE "O registro foi encontrado e ser� excluido'" 
              INPUT i-custnum customer.NAME "'." 
              VIEW-AS ALERT-BOX.
        DELETE customer.

        MESSAGE "Tecle enter para continuar" 
        VIEW-AS ALERT-BOX.

    END.
END.
