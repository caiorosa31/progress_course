
## 📁 l-disp.p — Exibição de Clientes Filtrados por País


### 🔍 Explicação:

Este exercício ensina como utilizar FOR EACH com filtro de condição e exibir múltiplos campos com DISPLAY formatado, utilizando a cláusula BEGINS para filtragem textual.

---


## 🔍 Código explicado

```bash
CURRENT-WINDOW:WIDTH = 201.
🔵 /* Ajusta a largura da janela para facilitar leitura */

FOR EACH customer NO-LOCK WHERE customer.country BEGINS "F":
    🔵 /* Itera sobre clientes cujo país começa com a letra "F", sem travar os registros */

    DISPLAY customer.custnum
            customer.NAME
            customer.country WITH WIDTH 200.
    🔵 /* Exibe número, nome e país do cliente com largura de 200 caracteres */

END.

```



## 📘 Resumo Didático

#### Este exercício ensina:

Demonstra uso de FOR EACH com cláusula de condição BEGINS, útil para filtros textuais.

O modificador NO-LOCK permite apenas leitura, ideal para listagens.

Exemplo clássico para relatórios filtrados por prefixos de texto.

WIDTH define largura da tela para melhor apresentação dos dados.
