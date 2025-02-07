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

Crie o projeto Svelte

```bash
npx sv create front
```

-> Minimal
-> No
-> None
-> Npm

```bash
cd front
npm i
npm run dev
```