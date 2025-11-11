-- Criar tabelas para os 10 nichos

-- 1. Tecnologia Consumer
CREATE TABLE IF NOT EXISTS tecnologia_trends (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  url TEXT,
  score_viralidade NUMERIC(3,1),
  data_coleta TIMESTAMP DEFAULT NOW(),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 2. Beleza & Skincare
CREATE TABLE IF NOT EXISTS beleza_skincare (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 3. Marketing Digital
CREATE TABLE IF NOT EXISTS marketing_digital (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 4. Casa & Decoracao
CREATE TABLE IF NOT EXISTS casa_decoracao (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 5. IA & Tecnologia
CREATE TABLE IF NOT EXISTS ia_tecnologia (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 6. Financas Pessoais
CREATE TABLE IF NOT EXISTS financas_pessoais (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 7. Saude & Bem-estar
CREATE TABLE IF NOT EXISTS saude_bem_estar (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 8. Pets & Animais
CREATE TABLE IF NOT EXISTS pets_animais (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 9. Sustentabilidade
CREATE TABLE IF NOT EXISTS sustentabilidade (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- 10. Educacao Online
CREATE TABLE IF NOT EXISTS educacao_online (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255),
  descricao TEXT,
  fonte VARCHAR(100),
  score_viralidade NUMERIC(3,1),
  criado_em TIMESTAMP DEFAULT NOW()
);

-- Tabela de Posts Gerados
CREATE TABLE IF NOT EXISTS posts_gerados (
  id SERIAL PRIMARY KEY,
  titulo VARCHAR(255) NOT NULL,
  texto TEXT NOT NULL,
  nicho VARCHAR(100),
  imagens_urls TEXT[],
  videos_urls TEXT[],
  score_viralidade NUMERIC(3,1),
  status VARCHAR(50) DEFAULT 'pendente',
  criado_em TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_posts_status ON posts_gerados(status);
CREATE INDEX idx_posts_nicho ON posts_gerados(nicho);
