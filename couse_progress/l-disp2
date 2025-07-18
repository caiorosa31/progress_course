CURRENT-WINDOW:WIDTH = 100.

DEF VAR c-nome AS CHAR NO-UNDO.
DEF VAR credit AS DECIMAL NO-UNDO.

UPDATE c-nome.
UPDATE credit.

FOR EACH customer WHERE customer.NAME BEGINS c-nome AND customer.creditlimit > credit:
    DISPLAY customer.custnum
            customer.NAME
            customer.creditlimit.
END.
