CURRENT-WINDOW:WIDTH = 201.
FOR EACH customer NO-LOCK:
    DISPLAY customer.custnum customer.creditlimit WITH WIDTH 200.
    IF customer.creditlimit > 15000 THEN
        NEXT.
    IF customer.creditlimit = 10000 THEN
        LEAVE.
    FIND CURRENT customer EXCLUSIVE-LOCK NO-ERROR.
    UPDATE customer.NAME
           customer.address.
END.
