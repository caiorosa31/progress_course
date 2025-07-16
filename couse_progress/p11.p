//Peça ao usuário que digite o nome de um cliente e atribua esse nome a um novo registro da tabela customer.

DEF VAR c-nome AS CHAR NO-UNDO.

PROMPT-FOR c-nome.

CREATE customer.
ASSIGN customer.NAME = INPUT c-nome.
DISPLAY customer WITH SIDE-LABELS 2 COLUMNS WIDTH 120.
