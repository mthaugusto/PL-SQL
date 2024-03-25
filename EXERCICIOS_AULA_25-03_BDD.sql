SET SERVEROUTPUT ON;

-- FOR LOOP

DECLARE 
    soma NUMBER := 0;
    
BEGIN
    FOR i IN 10..1 LOOP
        soma := soma + i;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('O total é: ' || soma);

END;

//

-- FOR REVERSE LOOP

DECLARE
BEGIN
    FOR i IN REVERSE 1..10 LOOP
            DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;

END;

//

-- WHILE LOOP

DECLARE
    i NUMBER := 1;
    total NUMBER := 0;
BEGIN
    WHILE (i <= 5) LOOP
        total := total + i;
        i := i + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('O total é: ' || total);
END;

//

-- EXIT WHEN LOOP
DECLARE
    i number := 1;
    total number := 0;
BEGIN
    LOOP
        total := total + i;
        i := i + 1;
        EXIT WHEN i > 7;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('O total é: ' || total);
END;

//

-- USANDO PROMPT + LOOP ANINHADO
ACCEPT  multip_ent PROMPT 'Digite o limite do multiplicador';

DECLARE
    multiplicando NUMBER;
    multiplicador NUMBER;
    resultado NUMBER;
BEGIN
    FOR multiplicando IN 1..&multip_ent loop
        FOR multiplicador IN 1..10 loop
            resultado := multiplicando * multiplicador;
            DBMS_OUTPUT.PUT_LINE(multiplicando || ' * ' || multiplicador || ' = ' || resultado);
        END LOOP;
    END LOOP;
END;