//Mostre o nome e o código de um cliente com CustNum = 1.

FIND customer WHERE customer.CustNum = 1.
DISPLAY customer.NAME
        customer.custNum
        WITH SIDE-LABELS.
