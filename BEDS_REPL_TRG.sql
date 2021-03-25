CREATE OR REPLACE TRIGGER CASINOCRM.BEDS_REPL_TRG 
FOR DELETE OR INSERT OR UPDATE ON CASINOCRM.BEDS 
COMPOUND TRIGGER
  TYPE TRID IS TABLE OF VARCHAR2(50)  INDEX BY VARCHAR2(50);
  rid TRID;
  i VARCHAR2(50);

   AFTER EACH ROW IS
   BEGIN

      IF INSERTING THEN
        rid(:new.rowid) := 'INSERT';
      ELSIF UPDATING THEN
        rid(:new.rowid) := 'UPDATE';
      ELSIF DELETING THEN
        rid('ID' || '-' || :old.id) := 'DELETE';
      END IF;

   END AFTER EACH ROW;
     
  AFTER STATEMENT IS
  BEGIN
        
    i := rid.FIRST;
 
    WHILE i IS NOT NULL LOOP
      --DBMS_OUTPUT.put_line(rid(i) || ' ' || i);
      DBMS_OUTPUT.put_line(casinocrm.java_procedures.tojson('CASINOCRM', 'BEDS', rid(i), i, null));   
      i := rid.NEXT(i);
    END LOOP;
  
 END AFTER STATEMENT;
 
END;