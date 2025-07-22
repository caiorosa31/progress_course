CURRENT-WINDOW:WIDTH = 251.


REPEAT WITH 1 COL:
    PROMPT-FOR customer.custnum.
    
    FIND customer WHERE customer.custnum = INPUT customer.custnum NO-ERROR.
    
    IF AVAIL customer THEN
    DO:
            UPDATE customer EXCEPT customer.custnum WITH WIDTH 250.
            MESSAGE "Usuario atualizado com sucesso!"
            VIEW-AS ALERT-BOX INFORMATION.
    END.
    ELSE
    DO:
            MESSAGE "Usuario não encontrado! Insira ele no sistema."
            VIEW-AS ALERT-BOX INFORMATION.
            CREATE customer.
            INSERT customer.
            MESSAGE "Usuario inserido com sucesso!"
            VIEW-AS ALERT-BOX INFORMATION.
    END.
END.
