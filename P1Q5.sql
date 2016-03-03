SET SERVEROUTPUT ON;

DECLARE
  V_PROVINCIA CENTROS.PROVINCIA%TYPE:='BARCELONA';
  V_ID CENTROS.ID%TYPE:=3;
BEGIN 
  UPDATE CENTROS
    SET PROVINCIA = V_PROVINCIA
    WHERE ID=V_ID;
  IF SQL%FOUND
  THEN
    DBMS_OUTPUT.PUT_LINE('ACTUALIZADO EL CENTRO '||TO_CHAR (V_ID));
    COMMIT;
  ELSE
    DBMS_OUTPUT.PUT_LINE('NO EXISTE EL CENTRO '||TO_CHAR (V_ID));
  END IF;
END;  