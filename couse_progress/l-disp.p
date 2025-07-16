CURRENT-WINDOW:WIDTH = 201.

FOR EACH customer NO-LOCK WHERE customer.country BEGINS "F":
    DISPLAY customer.custnum
            customer.NAME
            customer.country WITH WIDTH 200.
END.
