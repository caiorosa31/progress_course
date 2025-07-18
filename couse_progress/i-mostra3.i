/* i-mostra3.i */
FOR EACH {&table}:
 DISPLAY {&table}.{&field1}
        &IF "{&field2}" <> "" &THEN
               {&table}.{&field2}
        &ENDIF
         .
END.
