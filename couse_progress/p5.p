DEF VAR i-custnum AS INT NO-UNDO.

PROMPT-FOR i-custnum.
ASSIGN i-custnum = INPUT i-custnum.

FIND customer WHERE customer.CustNum = i-custnum EXCLUSIVE-LOCK NO-ERROR.

IF AVAIL customer THEN DO:
    UPDATE customer WITH SIDE-LABELS 2 COLUMNS WIDTH 120.
END.
ELSE
    MESSAGE "código não encontrado" VIEW-AS ALERT-BOX ERROR.
