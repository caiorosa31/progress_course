DEF VAR i-custnum AS INTEGER NO-UNDO LABEL "Customer".
PROMPT-FOR i-custnum WITH SIDE-LABELS.
FIND customer
    WHERE customer.custNum = INPUT i-custnum
    EXCLUSIVE-LOCK NO-ERROR.
    IF AVAIL customer THEN DO:
        ASSIGN customer.NAME = customer.NAME + "X".
        DISPLAY customer.NAME.
        //DELETE customer.  
    END.
    ELSE DO:
        MESSAGE "customer" INPUT i-custnum "não encontrado" VIEW-AS ALERT-BOX ERROR.
    END.
