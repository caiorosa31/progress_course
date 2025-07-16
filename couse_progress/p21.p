//Lista os registros com nome caio utilizando bloco de reptição For Each
//DISP é a abreviação de DISPLAY
CURRENT-WINDOW:WIDTH = 200.
FOR EACH customer NO-LOCK
    WHERE customer.NAME = "caio":
    DISP customer.custnum
    customer.NAME WITH FONT 2 WIDTH 180.
END.
