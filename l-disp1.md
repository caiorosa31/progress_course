
## 📁 l-disp1.p — Exibição com Filtros Combinados (País + CEP)


### 🔍 Explicação:

Este exercício expande a filtragem de registros usando múltiplas condições BEGINS com AND, combinando país e código postal. Ideal para relatórios refinados.

---


## 🔍 Código explicado

```bash
CURRENT-WINDOW:WIDTH = 201.
🔵 /* Ajusta a largura da janela para melhor exibição */

FOR EACH customer NO-LOCK 
    WHERE customer.country BEGINS "F" AND customer.postalcode BEGINS "7":
    🔵 /* Itera sobre clientes cujo país começa com "F" e CEP com "7" */

    DISPLAY customer.custnum
            customer.NAME
            customer.country
            customer.postalcode WITH WIDTH 200.
    🔵 /* Exibe número, nome, país e CEP do cliente com largura definida */
END.

```



## 📘 Resumo Didático

#### Este exercício ensina:

Refina o uso de FOR EACH com múltiplas condições de filtro usando AND.

BEGINS permite busca por prefixo textual — útil para filtragens por letra ou número inicial.

Combinação de filtros aumenta a precisão na listagem de registros.

Ideal para sistemas de busca e relatórios administrativos.
