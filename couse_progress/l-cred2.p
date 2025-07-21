CURRENT-WINDOW:WIDTH = 251.

DEF VAR d-credit AS DECIMAL NO-UNDO.

PROMPT-FOR customer.custnum.

FIND customer USING customer.custnum NO-LOCK NO-ERROR.

DISPLAY customer.custnum
        customer.NAME
        customer.creditlimit.
        
assign d-credit = customer.creditlimit.

    REPEAT:
        FIND NEXT customer WHERE customer.creditlimit >= d-credit by customer.creditlimit DESC.
        DISPLAY customer.custnum
                customer.NAME
                customer.creditlimit.
    END.
