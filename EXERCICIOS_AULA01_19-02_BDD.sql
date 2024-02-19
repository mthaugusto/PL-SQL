SET SERVEROUTPUT ON

/// EXERCÍCIOS AULA 01 - 19-02. 

// 1) 

DECLARE
    nome VARCHAR2(50);
BEGIN
    nome := 'Matheus Leite';
    DBMS_OUTPUT.PUT_LINE('Meu nome é ' || nome || '.');
END;
/

// 2)
DECLARE
    VL1 NUMBER := 10;
    VL2 NUMBER := 10;
    VL3 NUMBER := 5;
    TOTAL NUMBER := VL1+VL2+VL3;
BEGIN
    DBMS_OUTPUT.PUT_LINE('A soma dos três valores é: ' || TOTAL || '.');
END;
/

// 3)
DECLARE
    VLR INT := 10;
    ANT INT := VLR-1;
    SUC INT := VLR+1; 
BEGIN
    DBMS_OUTPUT.PUT_LINE('O antecessor do número ' || VLR || ' é o ' || ANT || ' e o seu sucessor é o ' || SUC || '.');
END;
/

// 4)
DECLARE
    MEU_SALARIO NUMBER := 5000;
    SALARIO_BASE NUMBER := 1412;
    QTD NUMBER := MEU_SALARIO / SALARIO_BASE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Existem ' || QTD || ' salários mínimos dentro do salário de ' || MEU_SALARIO || ' reais.');
END;
/
// 5)

DECLARE
    CP1 NUMERIC := 7;
    CP2 NUMERIC := 6.5;
    CP3 NUMERIC := 10;
    MEDIA NUMERIC := ((CP1+CP2+CP3)/3);
BEGIN
    DBMS_OUTPUT.PUT_LINE('A média final do aluno é: ' || MEDIA || '.');
END;
/

//6)
DECLARE
    MEU_SALARIO NUMBER := 5000;
    REAJUSTE NUMBER := 5;
    MEU_SALARIO_REAJUSTADO NUMBER := MEU_SALARIO + (MEU_SALARIO * (REAJUSTE/100));
BEGIN
    DBMS_OUTPUT.PUT_LINE('Meu salário com o resjuste de ' || REAJUSTE || '% é de: ' || MEU_SALARIO_REAJUSTADO || ' reais.' );
END;
    

