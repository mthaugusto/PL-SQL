SET SERVEROUTPUT ON

/// EXERC�CIOS AULA 01 - 19-02. 

// 1) 

DECLARE
    nome VARCHAR2(50);
BEGIN
    nome := 'Matheus Leite';
    DBMS_OUTPUT.PUT_LINE('Meu nome � ' || nome || '.');
END;
/

// 2)
DECLARE
    VL1 NUMBER := 10;
    VL2 NUMBER := 10;
    VL3 NUMBER := 5;
    TOTAL NUMBER := VL1+VL2+VL3;
BEGIN
    DBMS_OUTPUT.PUT_LINE('A soma dos tr�s valores �: ' || TOTAL || '.');
END;
/

// 3)
DECLARE
    VLR INT := 10;
    ANT INT := VLR-1;
    SUC INT := VLR+1; 
BEGIN
    DBMS_OUTPUT.PUT_LINE('O antecessor do n�mero ' || VLR || ' � o ' || ANT || ' e o seu sucessor � o ' || SUC || '.');
END;
/

// 4)
DECLARE
    MEU_SALARIO NUMBER := 5000;
    SALARIO_BASE NUMBER := 1412;
    QTD NUMBER := MEU_SALARIO / SALARIO_BASE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Existem ' || QTD || ' sal�rios m�nimos dentro do sal�rio de ' || MEU_SALARIO || ' reais.');
END;
/
// 5)

DECLARE
    CP1 NUMERIC := 7;
    CP2 NUMERIC := 6.5;
    CP3 NUMERIC := 10;
    MEDIA NUMERIC := ((CP1+CP2+CP3)/3);
BEGIN
    DBMS_OUTPUT.PUT_LINE('A m�dia final do aluno �: ' || MEDIA || '.');
END;
/

//6)
DECLARE
    MEU_SALARIO NUMBER := 5000;
    REAJUSTE NUMBER := 5;
    MEU_SALARIO_REAJUSTADO NUMBER := MEU_SALARIO + (MEU_SALARIO * (REAJUSTE/100));
BEGIN
    DBMS_OUTPUT.PUT_LINE('Meu sal�rio com o resjuste de ' || REAJUSTE || '% � de: ' || MEU_SALARIO_REAJUSTADO || ' reais.' );
END;
    

