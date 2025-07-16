
## 📁 I-add2.p — Criação Manual e Atribuição de Valores


### 🔍 Explicação:

Neste exercício, praticamos a criação manual de um cliente com o comando CREATE, a atribuição de valores com ASSIGN e a exibição/interação com DISPLAY e PROMPT-FOR.

---


## 🔍 Código explicado

```bash
CURRENT-WINDOW:WIDTH = 120.
🔵 /* Define a largura da janela para melhor apresentação visual */

CREATE customer.
🔵 /* Cria manualmente um novo registro na tabela customer */

ASSIGN customer.salesrep = "bbb".
🔵 /* Atribui o código do representante de vendas diretamente */

DISPLAY customer WITH SIDE-LABELS 1 COLUMNS WIDTH 120.
🔵 /* Exibe os dados do cliente com layout formatado: rótulos laterais, 1 coluna, largura 120 */

PROMPT-FOR customer.
🔵 /* Permite ao usuário preencher os campos manualmente em tempo de execução */

ASSIGN customer.
🔵 /* (Comentado) Tenta reatribuir todos os campos de customer — não usado efetivamente aqui */

```



## 📘 Resumo Didático

#### Este exercício ensina:

CREATE é utilizado para iniciar um novo registro manualmente.

ASSIGN permite atribuir valores diretamente aos campos, útil para inicializações automáticas.

DISPLAY exibe dados formatados de maneira limpa para revisão.

PROMPT-FOR pede a entrada dos dados ao usuário, campo a campo.

Ideal para compreender a diferença entre criação automática (INSERT) e manual (CREATE + PROMPT-FOR).
