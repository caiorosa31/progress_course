CURRENT-WINDOW:WIDTH = 201.

DEF VAR i-custnum AS INT NO-UNDO.

REPEAT:
    PROMPT-FOR i-custnum.
    FIND customer WHERE customer.custnum = INPUT i-custnum NO-ERROR.
    
    IF AVAIL customer THEN
    DO:
        UPDATE customer WITH 1 COLUMN SIDE-LABELS WIDTH 200.
        MESSAGE "Usuario alterado com sucesso" VIEW-AS ALERT-BOX.
    END.
    ELSE
        MESSAGE "N�o foi poss�vel fazer a altera��o" VIEW-AS ALERT-BOX ERROR.
    
END.
