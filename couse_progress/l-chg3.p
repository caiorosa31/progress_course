CURRENT-WINDOW:WIDTH = 201.

DEF VAR i-custnum AS INT NO-UNDO.

REPEAT:
    SET i-custnum.
    FIND customer WHERE customer.custnum = i-custnum NO-ERROR.
    DISPLAY customer WITH 1 COLUMN SIDE-LABELS WIDTH 200.
    IF AVAIL customer THEN
    DO:
        SET customer WITH 1 COLUMN SIDE-LABELS WIDTH 200.
        MESSAGE "Usuario alterado com sucesso" VIEW-AS ALERT-BOX.
    END.
    ELSE
        MESSAGE "Não foi possível fazer a alteração" VIEW-AS ALERT-BOX ERROR.
    
END.
