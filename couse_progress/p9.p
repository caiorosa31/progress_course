DEF VAR i-custnum AS INT NO-UNDO.

PROMPT-FOR i-custnum.

FIND customer WHERE customer.CustNum = INPUT i-custnum NO-ERROR.

IF AVAIL customer THEN
DO:
    MESSAGE "O C�digo: |" INPUT i-custnum "| est� sendo excluido" VIEW-AS ALERT-BOX.
    DELETE customer. 
END.
ELSE DO: 
    MESSAGE "C�digo: |" INPUT i-custnum "| n�o encontrado" VIEW-AS ALERT-BOX ERROR.
END.
