DEF VAR i-custnum AS INT NO-UNDO.

PROMPT-FOR i-custnum.

FIND customer WHERE customer.CustNum = INPUT i-custnum NO-ERROR.

IF AVAIL customer THEN
DO:
    MESSAGE "O Código: |" INPUT i-custnum "| está sendo excluido" VIEW-AS ALERT-BOX.
    DELETE customer. 
END.
ELSE DO: 
    MESSAGE "Código: |" INPUT i-custnum "| não encontrado" VIEW-AS ALERT-BOX ERROR.
END.
