# 🛒 Projeto E-commerce — Banco de Dados e Análise de Dados

<p align="center">
  <img src="06_power_bi/Dashboard.png" alt="Dashboard E-commerce" width="100%">
</p>

<p align="center">
  <strong>Projeto completo de dados aplicado a um cenário de e-commerce</strong>
</p>

---

## 📌 Sobre o projeto

Este projeto apresenta o desenvolvimento de uma solução completa de dados para um cenário de **e-commerce**, passando por todas as principais etapas de um projeto de dados:

**Requisitos → Modelagem → Banco de Dados → SQL → Análises → Power BI**

O objetivo foi estruturar os dados de uma operação de e-commerce e transformá-los em informações para análise de **vendas, clientes, produtos, estoque, pagamentos e entregas**.

O projeto foi desenvolvido como parte do meu portfólio prático durante minha formação em **Ciência de Dados**.

---

# 🎯 Objetivo do projeto

Desenvolver uma solução de dados capaz de organizar, relacionar e analisar as principais informações de um e-commerce.

### Principais objetivos:

- estruturar um banco de dados relacional;
- transformar requisitos de negócio em modelos de dados;
- desenvolver modelo conceitual;
- desenvolver modelo lógico;
- desenvolver modelo físico;
- criar o banco de dados em MySQL;
- criar tabelas e relacionamentos;
- inserir os dados;
- desenvolver consultas SQL;
- realizar análises de vendas e clientes;
- analisar produtos e estoque;
- analisar pagamentos e entregas;
- criar indicadores;
- desenvolver um dashboard no Power BI.

---

# 🏢 Cenário de negócio

O projeto simula a estrutura de dados de uma empresa de e-commerce que precisa acompanhar sua operação.

O banco de dados permite relacionar informações de:

| Área | Informações |
|---|---|
| 👤 Clientes | Dados dos clientes |
| 🛒 Pedidos | Pedidos realizados |
| 📦 Produtos | Produtos comercializados |
| 🧾 Itens do pedido | Produtos presentes em cada pedido |
| 📊 Estoque | Quantidade disponível |
| 🏭 Fornecedores | Fornecedores dos produtos |
| 💳 Pagamentos | Informações dos pagamentos |
| 🚚 Entregas | Informações das entregas |
| ⭐ Avaliações | Avaliações dos produtos |

---

# 📋 Regra de negócio

Uma das principais regras consideradas no desenvolvimento foi:

> **Não permitir vendas em quantidade superior ao estoque disponível.**

Essa regra foi considerada para manter a consistência entre os dados de **vendas e estoque**.

---

# 🧠 Modelagem de dados

## 1. Modelo conceitual

O modelo conceitual foi desenvolvido para representar as principais entidades do sistema e seus relacionamentos antes da implementação do banco de dados.

### Principais entidades

- cliente
- pedido
- item_pedido
- produto
- estoque
- fornecedor
- pagamento
- entrega
- avaliação

---

## 2. Modelo lógico

A partir do modelo conceitual, foi desenvolvido o modelo lógico, definindo as tabelas, atributos, chaves e relacionamentos.

O modelo lógico serviu como base para a construção do banco de dados.

---

## 3. Modelo físico

Na etapa de implementação, a estrutura foi transformada em tabelas utilizando **MySQL**.

Foram definidos:

- tabelas;
- campos;
- tipos de dados;
- chaves primárias;
- chaves estrangeiras;
- relacionamentos;
- regras de integridade;
- inserção dos dados.

---

# 🗄️ Banco de dados

O banco de dados foi desenvolvido utilizando:

**MySQL + SQL**

### Tabelas principais

```text
cliente
produto
pedido
item_pedido
pagamento
estoque
fornecedor
entrega
avaliacao
