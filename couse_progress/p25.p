//  Usando for each para pegar a lista de usuarios que começam com C e com salesrep = "bbb"
CURRENT-WINDOW:WIDTH = 200.
FOR EACH customer NO-LOCK
    WHERE customer.salesrep = "bbb" AND customer.NAME BEGINS "c". 
    DISPLAY customer.custnum 
            customer.salesrep
            customer.NAME WITH FONT 2 WIDTH 180.
END.
