DEF VAR i-custnum AS INT NO-UNDO.

PROMPT-FOR i-custnum.

FIND customer WHERE customer.CustNum = INPUT i-custnum NO-ERROR.

IF AVAIL customer THEN
DO:
   UPDATE customer WITH SIDE-LABELS 2 COLUMNS WIDTH 120.
END.
ELSE
MESSAGE "Erro no código" VIEW-AS ALERT-BOX ERROR.
