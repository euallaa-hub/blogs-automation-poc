# 🎉 Guia de Setup para Windows

## 1️⃣ Pré-requisitos

- [ ] Git instalado: https://git-scm.com/download/win
- [ ] Docker Desktop instalado: https://www.docker.com/products/docker-desktop
- [ ] 8GB de RAM (6GB disponível)
- [ ] 120GB de SSD
- [ ] Perplexity Pro ($20/mês)
- [ ] ChatGPT Plus ($20/mês)

### Verificar instalações

Abra **Git Bash** e digite:

```bash
git --version
docker --version
docker-compose --version
```

Devem aparecer versões de todos os três.

## 2️⃣ Download e Setup (10 minutos)

### Passo 1: Clone o repositório

```bash
# Abra Git Bash na pasta desejada
cd C:\Users\SeuUsuario\Desktop  # ou onde quiser

# Clone
git clone https://github.com/euallaa-hub/blogs-automation-poc.git
cd blogs-automation-poc
```

### Passo 2: Inicie os containers

```bash
docker-compose up -d
```

Isso vai:
- Baixar as imagens (3-5 minutos na primeira vez)
- Criar 4 containers: PostgreSQL, n8n, Metabase, Adminer
- Iniciar todos automaticamente

### Passo 3: Aguarde e verifique

```bash
# Aguarde 30 segundos
timeout /t 30 /nobreak

# Verifique status
docker-compose ps
```

Deve mostrar 4 containers com status "Up".

## 3️⃣ Acessar os Serviços

Abra seu navegador e acesse:

### 🌟 Metabase (Dashboard)
- URL: http://localhost:3000
- A primeira vez vai pedir para criar uma conta
- Criar conta com seu email

### ⚙️ n8n (Automação)
- URL: http://localhost:5678
- Login: **admin**
- Senha: **senha123**

### 💾 Adminer (Gerenciador de DB)
- URL: http://localhost:8080
- Sistema: PostgreSQL
- Servidor: postgres
- Usuário: admin
- Senha: senha123
- Banco: blogs_db

## 4️⃣ Criar as Tabelas do Banco

No **Adminer**:

1. Clique em "SQL command"
2. Cole o conteúdo do arquivo `init.sql`
3. Execute

Ou via CLI:

```bash
docker exec postgres-blogs psql -U admin -d blogs_db -f /docker-entrypoint-initdb.d/init.sql
```

## 5️⃣ Configurar APIs Gratuitas

### Google Trends (pytrends)
Não precisa de chave - lib́ automática

### Twitter/X API v2
1. Acesse: https://developer.twitter.com
2. Crie uma app
3. Pegue: API Key, API Secret, Bearer Token

### NewsAPI
1. Acesse: https://newsapi.org
2. Registre-se
3. Pegue sua API Key

### Reddit
1. Acesse: https://reddit.com/prefs/apps
2. Crie uma app "script"
3. Pegue: client_id, client_secret

### YouTube API
1. Acesse: https://console.cloud.google.com
2. Ative "YouTube Data API v3"
3. Crie chaves de API

## 6️⃣ Executar Scripts Python

Crie uma pasta `scripts` com os arquivos Python:

```bash
mkdir scripts
cd scripts
```

Os scripts serão criados nos próximos passos.

## 7️⃣ Monitorar

### Ver logs

```bash
# Todos os logs
docker-compose logs -f

# Apenas PostgreSQL
docker-compose logs -f postgres

# Apenas n8n
docker-compose logs -f n8n
```

### Parar tudo

```bash
docker-compose down
```

### Limpar volumes

```bash
docker-compose down -v
```

## 🛠️ Troubleshooting

### "docker-compose not found"

Instale: https://docs.docker.com/compose/install/

### "Port already in use"

Algum serviço já está usando a porta. Mude em `docker-compose.yml`:

```yaml
ports:
  - "3001:3000"  # de 3000 para 3001
```

### "Permission denied"

Re-inicie o Docker Desktop.

### Containers não iniciam

```bash
# Limpe tudo e comece do zero
docker-compose down -v
docker-compose up -d
```

## ✅ Next Steps

1. ✅ Todos os 4 containers rodando
2. ✅ Metabase acessível
3. ✅ n8n acessível
4. ✅ Adminer acessível
5. ⏭️  Criar primeiro workflow no n8n
6. ⏭️  Conectar APIs
7. ⏭️  Ativar coleta de dados

**Status**: Pronto para usar! 🚀
