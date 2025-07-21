DEF VAR new_rep AS CHAR NO-UNDO.
DEF VAR old_rep AS CHAR NO-UNDO.

UPDATE old_rep.
UPDATE new_rep.

FOR EACH customer WHERE customer.salesrep = old_rep:

ASSIGN customer.salesrep = new_rep.

    DISPLAY customer.salesrep
            customer.NAME
            customer.custnum.
    

END.
