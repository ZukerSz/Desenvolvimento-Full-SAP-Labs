# 🌌 Desenvolvimento Full SAP Labs

> <sub>**Hub Central do Ecossistema SAP**</sub>
> <sub>Este repositório serve como base de conhecimento, laboratório de testes e versionamento de soluções que para **toda a stack SAP**, do Back-end on-premise até a Nuvem. Com códigos, scripts, modelagens e lógicas desenvolvidas, focando em experimentação e consolidação de conceitos.</sub>

---

## 🚀 Stack Tecnológica

> <sub>*O repositório aborda soluções envolvendo as seguintes ferramentas e plataformas:*</sub>

### ☁️ Cloud & Analytics
* **SAP Datasphere:** Modelagem de dados, Data Builder, Views Relacionais e Associações.
* **SAP Analytics Cloud (SAC):** Scripts de *Advanced Formulas* (Data Actions), Design de Dashboards e Planejamento.
* **SAP BTP:** Integrações e serviços na nuvem.

### ⚙️ Core Development (S/4HANA)
* **ABAP Moderno:** Sintaxe 7.5+ e ABAP OO.
* **Data Modeling:** CDS Views (Core Data Services), SQL Script e AMDP.
* **Integração:** OData Services e APIs.

### 🛠️ Ferramentas & IDEs
* **VS Code & Cursor:** Edição ágil, integração com Git e AI-assisted coding.
* **Eclipse ADT:** Ambiente nativo para desenvolvimento ABAP/CDS.
* **Git:** Versionamento e controle de código.

---

## 📂 Estrutura do Repositório

> <sub>*Como este é um ambiente de laboratório, os projetos estão organizados por contexto técnico:*</sub>

| Contexto | Descrição |
| :--- | :--- |
| **📦 CDS Views** | Relatórios analíticos, Cubos e Dimensões virtuais. |
| **📈 Analytics** | Scripts de cálculo e lógicas para o SAC/Datasphere. |
| **🔧 ABAP Utils** | Snippets de código, Classes utilitárias e Automações. |
| **🔌 Integrações** | Testes de APIs e conectividade entre sistemas. |

---

## Views standard

> <sub>Lista de referência de **CDS views expostas** (públicas) comuns em S/4HANA — útil para modelagem, consumo em Datasphere/SAC e integrações. Onde existir view de texto correspondente, fica indicada ao lado da view principal.</sub>

### Views salvas inicialmente

| View |
| :--- |
| `A_JOURNALENTRYITEMBASIC` |
| `I_GLACCOUNTLINEITEM` |

### Dados mestres

| View principal | View de texto (quando aplicável) |
| :--- | :--- |
| `I_BusinessPartner` | — |
| `I_Customer` | `I_CustomerGroupText`, `I_CustomerAccountAssignmentGroupT` |
| `I_Supplier` | `I_SupplierText` |
| `I_Product` / `I_Material` | `I_ProductText` / `I_MaterialText` |
| `I_CompanyCode` | `I_CompanyCodeText` |
| `I_CostCenter` | `I_CostCenterText` |
| `I_ProfitCenter` | `I_ProfitCenterText` |
| `I_GLAccount` | `I_GLAccountText` |
| `I_GLAccountInChartOfAccounts` | *(texto em geral via* `I_GLAccountText` *com chave conta + plano de contas)* |
| `I_Plant` | `I_PlantText` |
| `I_SalesOrganization` | `I_SalesOrganizationText` |
| `I_MaterialGroup` | `I_MaterialGroupText` |
| `I_ControllingArea` | `I_ControllingAreaText` |

### Finanças / FI-CO

| View |
| :--- |
| `I_JournalEntry` |
| `I_JournalEntryItem` |
| `I_OperationalAcctgDocItem` |
| `I_ActualPlanJournalEntryItem` |

### Vendas / SD

| View |
| :--- |
| `I_SalesDocument` |
| `I_SalesDocumentItem` |
| `I_BillingDocument` |
| `I_BillingDocumentItem` |

### Suprimentos e estoque / MM

| View |
| :--- |
| `I_PurchaseOrder` / `I_PurchaseOrderAPI01` |
| `I_PurchaseOrderItem` / `I_PurchaseOrderItemAPI01` |
| `I_MaterialDocumentHeader` |
| `I_MaterialDocumentItem` |

---
<div align="center">
  <sub>Mantido por <b>Iuker Souza</b> • Desenvolvendo o SAP</sub>
</div>
