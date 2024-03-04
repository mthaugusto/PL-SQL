SET SERVEROUTPUT ON;

// EXERCICIO 01

ACCEPT nome CHAR PROMPT 'Digite seu nome: ';

DECLARE
    txt VARCHAR2(100) := '&nome';
BEGIN
  DBMS_OUTPUT.PUT_LINE(txt);
END;

/

ACCEPT QTD_DOLAR NUMBER PROMPT 'Digite o valor em dólar: ';

DECLARE
  TX_CAMBIO NUMBER := 4.99;
  VL_REAL NUMBER := &QTD_DOLAR * TX_CAMBIO;

BEGIN
  DBMS_OUTPUT.PUT_LINE('Total de reais: ' || VL_REAL);
END;

/

ACCEPT VL_TOTAL NUMBER PROMPT 'Digite o valor da compra: ';
ACCEPT QTD_PARC NUMBER PROMPT 'Em quantas parcelas? ';

DECLARE
  JUROS NUMBER := 1/100;
  TOTAL_JUROS NUMBER;
  VL_PARCELA NUMBER;
  VL_TOTAL_FINAL NUMBER(10,2);
BEGIN
    TOTAL_JUROS := &VL_TOTAL * JUROS * &QTD_PARC;
    VL_PARCELA := (&VL_TOTAL + TOTAL_JUROS) / &QTD_PARC;
    VL_TOTAL_FINAL := &VL_TOTAL + TOTAL_JUROS;
    DBMS_OUTPUT.PUT_LINE('O valor total de ' || &VL_TOTAL || ' em ' || &QTD_PARC || ' parcelas é de ' || VL_PARCELA || ' por parcela, resultando em uma compra de ' || VL_TOTAL_FINAL || ' reais.');
END;

/