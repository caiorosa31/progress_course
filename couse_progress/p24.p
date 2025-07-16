// Utiliza o For each para pegar a lista de usuarios que começam com a letra C e tem o ID maior que 2000

CURRENT-WINDOW:WIDTH = 200.
FOR EACH customer NO-LOCK
    WHERE customer.NAME BEGINS "c" 
    AND customer.custnum > 2000:
    DISPLAY customer.custnum
            customer.NAME WITH FONT 2 WIDTH 180.
END.
