CURRENT-WINDOW:WIDTH = 251.

DEF VAR ano1 AS INT FORMAT "9999" NO-UNDO.
DEF VAR ano2 AS INT FORMAT "9999" NO-UNDO.

UPDATE ano1.
UPDATE ano2.

FOR EACH order 
    WHERE order.orderdate >= DATE(1,1,ano1)
    AND order.orderdate <= DATE(12,31,ano2):
    DISPLAY order.ordernum
            order.custnum
            order.orderdate
            WITH WIDTH 250.
            
END.
