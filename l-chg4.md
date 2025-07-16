
## 📁 l-chg4.p — Alteração com PROMPT-FOR e ASSIGN


### 🔍 Explicação:

Ajusta a largura da janela com WIDTH = 201.

Utiliza loop REPEAT para repetidas alterações de clientes.

Solicita o código do cliente com PROMPT-FOR, busca o registro com FIND + NO-ERROR.

Se o cliente for localizado, exibe seus dados e permite edição via PROMPT-FOR customer.

Atribui os dados com ASSIGN e confirma alteração com MESSAGE.

Caso o cliente não seja localizado, exibe mensagem de erro.

---


## 🔍 Código explicado

```bash
CURRENT-WINDOW:WIDTH = 201.
🔵 /* Ajusta largura da janela para melhor visualização */

DEF VAR i-custnum AS INT NO-UNDO.
🔵 /* Declara variável para armazenar código do cliente */

REPEAT:
    PROMPT-FOR i-custnum.
    🔵 /* Solicita código do cliente */

    FIND customer WHERE customer.custnum = INPUT i-custnum NO-ERROR.
    🔵 /* Procura cliente no banco de dados */

    DISPLAY customer WITH SIDE-LABELS 1 COLUMNS WIDTH 200.
    🔵 /* Exibe dados do cliente com rótulos laterais */

    IF AVAIL customer THEN
    DO:
        PROMPT-FOR customer.
        🔵 /* Permite que o usuário edite os dados */

        ASSIGN customer.
        🔵 /* Salva os dados atualizados no banco */

        MESSAGE "Usuario alterado com sucesso" VIEW-AS ALERT-BOX.
        🔵 /* Exibe mensagem de confirmação */
    END.
    ELSE
        MESSAGE "No foi possvel fazer a alterao" VIEW-AS ALERT-BOX ERROR.
        🔵 /* Mensagem de erro caso o cliente não seja encontrado */

END.

```



## 📘 Resumo Didático

#### Este exercício ensina:

Apresenta uma alternativa ao UPDATE, usando PROMPT-FOR + ASSIGN.

Traz uma abordagem mais controlada de entrada e gravação de dados.

Ideal para treinar manipulação direta de buffers e formulários no Progress.

Interface simplificada e útil em programas de edição iterativa.


