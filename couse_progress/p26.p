CURRENT-WINDOW:WIDTH = 351.
FOR EACH customer EXCLUSIVE-LOCK:
    DISPLAY customer.custnum
            customer.NAME
            customer.address
            customer.creditlimit
            WITH SIDE-LABELS 4 COLUMN FONT 2 WIDTH 350.
    IF customer.creditlimit > 15000 THEN DO:
        UPDATE customer.NAME
        customer.address.
        MESSAGE "Registro Alterado".
        
    END.
END.
