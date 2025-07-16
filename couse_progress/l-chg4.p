CURRENT-WINDOW:WIDTH = 201.

DEF VAR i-custnum AS INT NO-UNDO.

REPEAT:
    PROMPT-FOR i-custnum.
    FIND customer WHERE customer.custnum = INPUT i-custnum NO-ERROR.
    DISPLAY customer WITH SIDE-LABELS 1 COLUMNS WIDTH 200.
    IF AVAIL customer THEN
    DO:
        PROMPT-FOR customer.
        ASSIGN customer.
        MESSAGE "Usuario alterado com sucesso" VIEW-AS ALERT-BOX.
    END.
    ELSE
        MESSAGE "Não foi possível fazer a alteração" VIEW-AS ALERT-BOX ERROR.
    
END.
