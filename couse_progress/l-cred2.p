CURRENT-WINDOW:WIDTH = 251.

DEF VAR d-credit AS DECIMAL NO-UNDO.

PROMPT-FOR customer.custnum.

FIND customer USING customer.custnum NO-LOCK NO-ERROR.

DISPLAY customer.custnum
        customer.NAME
        customer.creditlimit.
        
d-credit = customer.creditlimit.

    REPEAT:
        FIND NEXT customer WHERE customer.creditlimit >= d-credit.
        DISPLAY customer.custnum
                customer.NAME
                customer.creditlimit.
    END.
