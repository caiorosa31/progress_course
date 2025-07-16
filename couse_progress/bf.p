DEF BUFFER bfCustomer FOR customer.
DEF BUFFER bfCustomer2 FOR customer.

FIND FIRST customer
    WHERE customer.creditlimit > 15000
    NO-LOCK NO-ERROR.
DISP customer.custnum
     customer.NAME
     customer.creditlimit SKIP(1)
     WITH SIDE-LABELS 1 COLUMNS.

FIND NEXT bfCustomer2
    WHERE bfcustomer2.custnum > customer.custnum
    AND bfcustomer2.creditlimit > 15000
    NO-LOCK NO-ERROR.
DISP bfcustomer2.custnum
     bfcustomer2.NAME
     bfcustomer2.creditlimit  SKIP(1)
     WITH SIDE-LABELS 1 COLUMNS.          
     
     
FIND LAST bfCustomer
    WHERE bfcustomer.creditlimit > 15000
    NO-LOCK NO-ERROR.
DISP bfcustomer.custnum
     bfcustomer.NAME
     bfcustomer.creditlimit
     WITH SIDE-LABELS 1 COLUMNS.     
