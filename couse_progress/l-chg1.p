CURRENT-WINDOW:WIDTH = 201.

FOR EACH customer WITH SIDE-LABELS 1 COLUMNS WIDTH 200:
    IF AVAIL customer THEN
    DO:
        DISP customer.
        UPDATE customer.
        MESSAGE "Usuario alterado com sucesso!" VIEW-AS ALERT-BOX.
    END.
    ELSE
        MESSAGE "Não foi possivel alterar!" VIEW-AS ALERT-BOX ERROR.
    
   
END.
