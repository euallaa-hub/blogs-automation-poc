# 🚀 POC: Sistema de Análise de Tendências em 10 Nichos com IA

**Duração**: 60 dias  
**Objetivo**: Automatizar coleta, análise e geração de conteúdo em 10 nichos usando Docker + n8n + PostgreSQL + Metabase + IA

## 📋 Quick Start (3 Comandos)

```bash
# 1. Clone o repositório
git clone https://github.com/euallaa-hub/blogs-automation-poc.git
cd blogs-automation-poc

# 2. Inicie os containers
docker-compose up -d

# 3. Aguarde 30 segundos e acesse
echo "Aguardando containers iniciarem..."
sleep 30
```

## 🌐 Acessos

| Serviço | URL | Login |
|---------|-----|-------|
| **Metabase** | http://localhost:3000 | Criar novo conta |
| **n8n** | http://localhost:5678 | admin / senha123 |
| **Adminer** | http://localhost:8080 | postgres / admin / senha123 |
| **PostgreSQL** | localhost:5432 | Usuário: admin |

## 🗂️ Estrutura

```
.
├── docker-compose.yml       # Orquestração de todos os containers
├── init.sql                 # Schema do banco de dados (10 nichos)
├── scripts/
│   ├── collect_google_trends.py
│   ├── collect_twitter.py
│   ├── collect_news.py
│   ├── collect_reddit.py
│   └── generate_content.py
└── n8n/
    └── workflows/           # Workflows de automação
```

## 📊 Os 10 Nichos

1. **Tecnologia Consumer** - Smartphones, gadgets, laptops
2. **Beleza & Skincare** - Produtos, tendências, tutoriais
3. **Marketing Digital** - SEO, email marketing, social media
4. **Casa & Decoração** - DIY, design, reformas
5. **IA & Tecnologia** - ChatGPT, automação, LLMs
6. **Finanças Pessoais** - Investimentos, cripto, renda passiva
7. **Saúde & Bem-estar** - Fitness, dietas, meditação
8. **Pets & Animais** - Produtos, cuidados, curiosidades
9. **Sustentabilidade** - Eco-friendly, energias renováveis
10. **Educação Online** - Cursos, bootcamps, e-learning

## 🔄 Fluxo de Dados

```
APIs (Google Trends, Twitter, NewsAPI, Reddit, YouTube)
  ↓
PostgreSQL (Armazenamento)
  ↓
n8n (Orquestração)
  ↓
ChatGPT + Perplexity (Análise & Geração)
  ↓
Metabase (Dashboards)
  ↓
Posts Prontos (Textos + Links de Imagens/Vídeos)
```

## 🛠️ Ferramentas

- **Docker**: Containerização
- **PostgreSQL**: Banco de dados
- **n8n**: Automação de workflows
- **Metabase**: Dashboards de análise
- **Python**: Scripts de coleta
- **APIs Gratuitas**: Google Trends, Twitter, NewsAPI, Reddit, YouTube, Unsplash, Pexels

## 💰 Custos (60 Dias)

- **Docker/n8n/PostgreSQL**: R$ 0 (Grátis)
- **Metabase**: R$ 0 (Grátis)
- **APIs**: R$ 0 (Tier gratuita)
- **Perplexity Pro**: R$ 120 (Análise IA)
- **ChatGPT Plus**: R$ 120 (Geração de conteúdo)
- **TOTAL**: ~R$ 240

## 📈 Esperado em 60 Dias

✅ 2.800-4.200 posts sugeridos  
✅ 20-30 posts por dia  
✅ 10 nichos monitorados 24/7  
✅ Score de viralidade calculado  
✅ Dashboard centralizado com métricas  
✅ Sistema pronto para escalar  

## 🚀 Roadmap

**Semana 1-2**: Setup + APIs  
**Semana 3-4**: Coleta de dados + Armazenamento  
**Semana 5-6**: Análise + Scoring  
**Semana 7-8**: Geração de conteúdo + Dashboards  
**Semana 9-12**: Otimizações + Publicação automática  

## 📝 Next Steps

1. Clonar este repo
2. Executar `docker-compose up -d`
3. Acessar Metabase em http://localhost:3000
4. Executar scripts Python para coleta de dados
5. Configurar workflows no n8n
6. Monitorar dashboards

## 📞 Suporte

Qualquer dúvida, abra uma **Issue** no repositório.

---

**Status**: 🟢 Pronto para Deploy  
**Última atualização**: Novembro 2025
