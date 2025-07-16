DEF VAR c-nome AS CHAR NO-UNDO.
PROMPT-FOR c-nome.

FIND customer WHERE customer.NAME = INPUT c-nome.
 IF AVAIL customer THEN
 DO:
     UPDATE customer WITH WIDTH 120.
 END.
 ELSE
    MESSAGE "nome não encontrado" VIEW-AS ALERT-BOX ERROR.
