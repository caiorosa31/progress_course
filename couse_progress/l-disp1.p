CURRENT-WINDOW:WIDTH = 201.

FOR EACH customer NO-LOCK WHERE customer.country BEGINS "F" AND customer.postalcode BEGINS "7":
    DISPLAY customer.custnum
            customer.NAME
            customer.country
            customer.postalcode WITH WIDTH 200.
END.
