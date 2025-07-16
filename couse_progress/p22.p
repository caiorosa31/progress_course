//Usa repate para pegar a lista de usuarios aumentando +1 no id a partir do 1

CURRENT-WINDOW:WIDTH = 120.
REPEAT WITH 1 COLUMN SIDE-LABELS WIDTH 120:
DEF VAR i-num AS INT NO-UNDO.
i-num = i-num + 1.
FIND customer WHERE customer.custnum = i-num.
DISPLAY customer.custnum
        customer.NAME.
END.
