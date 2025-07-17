CURRENT-WINDOW:WIDTH = 251.

PROMPT-FOR customer.custnum.

FIND FIRST customer WHERE customer.custnum = INPUT customer.custnum.
    UPDATE customer WITH SIDE-LABELS 1 COL WIDTH 250.
