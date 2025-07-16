
## 📁 l-chg1.p — Atualização de Todos os Clientes com Feedback Visual


### 🔍 Explicação:

Define a largura da janela (WIDTH) para melhor apresentação visual.

Utiliza FOR EACH para percorrer todos os registros da tabela customer.

Aplica formatação WITH SIDE-LABELS 1 COLUMNS WIDTH 200 para exibição organizada.

Para cada cliente disponível, exibe os dados (DISP), permite alteração (UPDATE) e confirma sucesso com MESSAGE.

Caso não seja possível alterar (cliente não disponível), exibe alerta de erro.

---


## 🔍 Código explicado

```bash
CURRENT-WINDOW:WIDTH = 201.
🔵 /* Ajusta a largura da janela atual para visualização */

FOR EACH customer WITH SIDE-LABELS 1 COLUMNS WIDTH 200:
🔵 /* Percorre todos os registros da tabela customer com formatação */

    IF AVAIL customer THEN
    DO:
        DISP customer.
        🔵 /* Exibe os dados do cliente */

        UPDATE customer.
        🔵 /* Permite editar os dados do cliente */

        MESSAGE "Usuario alterado com sucesso!" VIEW-AS ALERT-BOX.
        🔵 /* Mostra mensagem de confirmação */
    END.

    ELSE
        MESSAGE "No foi possivel alterar!" VIEW-AS ALERT-BOX ERROR.
        🔵 /* Alerta caso o cliente não esteja disponível */

END.

```



## 📘 Resumo Didático

#### Este exercício ensina:

Demonstra varredura completa de registros com FOR EACH.

Combina visualização e edição de forma encadeada.

Mostra o uso de alertas de sucesso e erro após tentativa de atualização.

Exercício útil para revisão de todos os registros de uma tabela com retorno imediato ao usuário.
