DEF VAR i-custnum AS INT NO-UNDO.

UPDATE i-custnum WITH SIDE-LABELS.

FIND customer WHERE customer.CustNum = i-custnum NO-ERROR.

IF AVAIL customer THEN
DO:
   UPDATE customer.NAME.
END.
ELSE
MESSAGE "Código não encontrado" VIEW-AS ALERT-BOX ERROR. 
