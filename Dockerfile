FROM python:3.10-slim

LABEL maintainer="hiandra@gmail.com"
LABEL description="Calculadora Console com CI/CD"

WORKDIR /app

# Copiar requirements primeiro (para cache)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar arquivos da aplicação
COPY calculadora.py .
COPY test_calculadora.py .

# Criar usuário não-root
RUN useradd -m -u 1000 appuser && chown -R appuser:appuser /app
USER appuser

# Comando padrão: executar testes e manter container vivo
CMD ["python", "-c", "import test_calculadora; test_calculadora.test_calculadora_interativa(); import time; print('Container funcionando! Pressione Ctrl+C para sair'); time.sleep(3600)"]