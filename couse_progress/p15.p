DEF VAR i-custnum AS INT NO-UNDO.

PROMPT-FOR i-custnum.
           
FIND customer WHERE customer.CustNum = INPUT i-custnum NO-ERROR.

IF AVAIL customer THEN
DO:
   UPDATE customer.CreditLimit.
   DISPLAY customer WITH SIDE-LABELS 2 COLUMNS WIDTH 120.
END.
ELSE 
MESSAGE "Código não encontrado" VIEW-AS ALERT-BOX ERROR.
