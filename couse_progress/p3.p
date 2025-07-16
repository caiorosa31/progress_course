PROMPT-FOR Salesrep.SalesRep.
FIND Salesrep 
    WHERE Salesrep.SalesRep = INPUT Salesrep.SalesRep NO-ERROR.
IF AVAILABLE Salesrep THEN
    DISPLAY Salesrep 
        WITH 1 COLUMN.
ELSE
    MESSAGE "salesrep não encontrado" VIEW-AS ALERT-BOX ERROR.
