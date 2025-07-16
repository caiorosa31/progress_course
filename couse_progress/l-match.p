CURRENT-WINDOW:WIDTH = 200.

DEF VAR c-name AS CHAR NO-UNDO.

UPDATE c-name.
FOR EACH customer WHERE customer.NAME MATCHES "*" + c-name + "*" NO-LOCK:
    DISP customer.NAME
    customer.custnum
    customer.salesrep WITH 3 COLUMN WIDTH 200.
END.

