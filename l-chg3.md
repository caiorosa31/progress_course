
## 📁 l-chg3.p — Alteração de Cliente com SET e DISPLAY


### 🔍 Explicação:

Este exercício treina a alteração de dados do cliente utilizando os comandos SET e DISPLAY, proporcionando uma interface de edição iterativa com layout amigável.

---


## 🔍 Código explicado

```bash
CURRENT-WINDOW:WIDTH = 201.
🔵 /* Define a largura da janela para melhor exibição */

DEF VAR i-custnum AS INT NO-UNDO.
🔵 /* Declara uma variável para receber o código do cliente */

REPEAT:
    SET i-custnum.
    🔵 /* Solicita o número do cliente ao usuário */

    FIND customer WHERE customer.custnum = i-custnum NO-ERROR.
    🔵 /* Procura o cliente informado, sem erro se não encontrar */

    DISPLAY customer WITH 1 COLUMN SIDE-LABELS WIDTH 200.
    🔵 /* Exibe os dados do cliente com rótulos laterais */

    IF AVAIL customer THEN
    DO:
        SET customer WITH 1 COLUMN SIDE-LABELS WIDTH 200.
        🔵 /* Permite editar os dados do cliente */

        MESSAGE "Usuario alterado com sucesso" VIEW-AS ALERT-BOX.
        🔵 /* Mensagem de confirmação */
    END.
    ELSE
        MESSAGE "Não foi possível fazer a alteração" VIEW-AS ALERT-BOX ERROR.
        🔵 /* Mensagem de erro caso cliente não seja encontrado */

END.

```



## 📘 Resumo Didático

#### Este exercício ensina:

Introduz o comando SET como alternativa de entrada de dados, semelhante ao UPDATE.

Utiliza DISPLAY para mostrar as informações do cliente antes da alteração.

Inclui controle de fluxo com IF AVAIL para verificar se o cliente foi encontrado.

Estrutura em REPEAT permite múltiplas alterações em sequência sem encerrar o programa.

Reforça o uso de layout amigável com SIDE-LABELS e WIDTH.
