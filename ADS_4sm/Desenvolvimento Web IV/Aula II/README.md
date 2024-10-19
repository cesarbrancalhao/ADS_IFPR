# Criação do ambiente virtual

python3 -m venv env


# Ativa o ambiente virtual
source env/bin/activate


# Instalar requests

pip install requests

# Instalar servidor web (fastAPI)

pip install "fastapi[standard]" uvicorn

# Executa o servidor

uvicorn main:app --reload