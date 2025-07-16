DEF VAR c-nome AS CHAR NO-UNDO.
DEF VAR i-custnum AS INT NO-UNDO.

PROMPT-FOR i-custnum WITH SIDE-LABELS.
PROMPT-FOR c-nome.

FIND customer WHERE customer.CustNum = INPUT i-custnum.
ASSIGN customer.NAME = INPUT c-nome.
