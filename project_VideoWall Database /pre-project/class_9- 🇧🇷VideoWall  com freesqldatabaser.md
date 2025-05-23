

### **1. Conexão com o Banco de Dados (www.freesqldatabase.com)**

1. **Criar conta e banco de dados**:
    - Acesse [www.freesqldatabase.com](https://www.freesqldatabase.com), registre-se e crie um banco MySQL.
    - Anote as credenciais: `hostname`, `database name`, `usuário`, `senha`.
2. **Configurar conexão no DBeaver**:
    - Abra o DBeaver → Clique em **Novo → Conexão de Banco de Dados**.
    - Selecione **MySQL** e preencha os campos com os dados do freesqldatabase.com.
    - Teste a conexão e salve[^4].

---

### **2. Modelagem Conceitual (Diagrama ER)**

1. **Gerar diagrama a partir do banco existente**:
    - Clique com o botão direito no banco → **Abrir → Diagrama de Banco de Dados**.
    - Selecione as tabelas para incluir no diagrama[^3][^5].
    - Use ferramentas de arrastar e soltar para organizar as entidades e relacionamentos visualmente.
2. **Personalizar visualização**:
    - Clique em **View → Estilos** para exibir tipos de dados, comentários ou simplificar atributos[^5].
    - Atribua cores às tabelas para diferenciar categorias (ex: `Conteúdo`, `Mídia`)[^5].

---

### **3. Implementação Física (DDL)**

1. **Criar tabelas via SQL ou GUI**:
    - **Método 1 (SQL)**: Abra um editor SQL no DBeaver (`Ctrl+Enter` para executar comandos):

```sql
CREATE TABLE VideoWalls (
  videowall_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL
);
```

    - **Método 2 (GUI)**: Clique com o botão direito em **Tabelas → Criar Nova Tabela** e defina colunas/chaves[^4].
2. **Adicionar relacionamentos**:
    - Na aba **Chaves Estrangeiras** da tabela, vincule colunas a outras tabelas (ex: `content_id` em `Schedules`)[^4].

---

### **4. População de Dados (DML)**

1. **Inserir dados de exemplo**:
    - Use o editor SQL para executar `INSERT`:

```sql
INSERT INTO Categories (name) VALUES 
('Notícias Gerais'),
('Cardápio do Dia');
```

2. **Importar dados de arquivos externos**:
    - Clique em **Tabela → Importar Dados** para carregar dados de CSV/Excel[^2].

---

### **5. Consultas e Testes (DQL)**

1. **Executar consultas**:
    - Abra um editor SQL e teste queries como:

```sql
-- Conteúdos ativos em "Notícias Gerais"
SELECT c.title FROM Contents c
JOIN ContentCategories cc ON c.content_id = cc.content_id
WHERE cc.category_id = 1 AND c.expiration_date > NOW();
```

2. **Analisar desempenho**:
    - Use `EXPLAIN` antes da query para verificar o plano de execução[^2].

---

### **6. Exportação de Resultados**

- Clique em **Exportar Dados** após executar uma query para gerar relatórios em PDF, CSV ou Markdown[^2][^5].

---

### Dicas Adicionais

- Use **autocomplete** (`Ctrl+Space`) para acelerar a escrita de SQL[^2].
- Revise metadados de tabelas clicando em **Propriedades → F4**[^2].
- Para migrar estruturas entre bancos, use **Ferramentas → Copiar Objetos**[^5].

Este fluxo permite integrar modelagem, implementação e testes diretamente no DBeaver, substituindo o MySQL Workbench sem perder funcionalidades críticas.
