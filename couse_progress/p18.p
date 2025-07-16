DEF VAR i-custnum AS INT NO-UNDO.

SET i-custnum.

FIND customer WHERE customer.CustNum = i-custnum NO-ERROR.

IF AVAIL customer THEN
DO:
  DISPLAY customer EXCEPT comments WITH SIDE-LABELS 2 COLUMNS.  
END.
ELSE
MESSAGE "Não encontrado" VIEW-AS ALERT-BOX ERROR.
