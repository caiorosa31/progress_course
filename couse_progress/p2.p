PROMPT-FOR customer.CustNum.
FIND customer 
    WHERE customer.CustNum = INPUT customer.CustNum NO-ERROR.
IF AVAILABLE customer THEN
    DISPLAY customer 
        EXCEPT customer.comments WITH 1 COLUMN.
ELSE
    MESSAGE "customer n�o encontrado" VIEW-AS ALERT-BOX ERROR.
