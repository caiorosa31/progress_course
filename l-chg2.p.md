
## 📁 l-chg2.p — Alteração Individual de Cliente com Loop Repetitivo


### 🔍 Explicação:

Define a largura da janela para visualização agradável (WIDTH = 201).

Cria um loop REPEAT que solicita ao usuário o número do cliente (custnum) repetidamente.

Utiliza FIND com NO-ERROR para localizar o cliente digitado.

Se o cliente existir, abre tela de edição com UPDATE e SIDE-LABELS.

Mostra MESSAGE de sucesso ou erro a cada iteração, permitindo edições contínuas até interrupção manual do programa.

---


## 🔍 Código explicado

```bash
CURRENT-WINDOW:WIDTH = 201.
🔵 /* Ajusta a largura da janela atual para 201 caracteres */

DEF VAR i-custnum AS INT NO-UNDO.
🔵 /* Declara variável para armazenar o número do cliente */

REPEAT:
    PROMPT-FOR i-custnum.
    🔵 /* Solicita o número do cliente ao usuário */

    FIND customer WHERE customer.custnum = INPUT i-custnum NO-ERROR.
    🔵 /* Procura o cliente correspondente com segurança */

    IF AVAIL customer THEN
    DO:
        UPDATE customer WITH 1 COLUMN SIDE-LABELS WIDTH 200.
        🔵 /* Atualiza os dados do cliente com formatação amigável */

        MESSAGE "Usuario alterado com sucesso" VIEW-AS ALERT-BOX.
        🔵 /* Exibe mensagem de confirmação */
    END.
    ELSE
        MESSAGE "No foi possvel fazer a alterao" VIEW-AS ALERT-BOX ERROR.
        🔵 /* Exibe erro se o cliente não existir */

END.

```



## 📘 Resumo Didático

#### Este exercício ensina:

Excelente para edições múltiplas sem reiniciar o programa.

Reforça o uso de REPEAT com FIND e controle de fluxo condicional.

Formatação SIDE-LABELS proporciona melhor usabilidade.

Exemplo ideal para criar telas de manutenção em sistemas Progress.
