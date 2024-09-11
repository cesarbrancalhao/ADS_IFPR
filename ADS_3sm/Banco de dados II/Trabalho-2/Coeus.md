Proposta: Coeus

Sistema de auxílio para montagem de computador desktop.
Dados:
- O sistema deve armazenar dados sobre peças de computador e avaliar o desempenho, preço, compatibilidade e consumo de energia para definir a melhor combinação para desktop disponível.
- Os dados utilizados para o cálculo incluem CPU (Processador), GPU (Placa de vídeo), Placa Mãe, RAM (Memória), HDD/SSD (Armazenamento), PSU (Fonte de energia) e Cooler (Resfriador de CPU).
    - Dado o objetivo e tempo disponível da atividade, a coleta de dados dos itens se limitará a CPUs das marcas Intel e AMD e GPUs das marcas NVIDIA e AMD.
    - Itens para mobile, laptops, servidores e mineração serão excluídos do dataset pois possuem métodos de avaliação inconstantes e resultam em dados inconsistentes.
- Os preços dos itens no dataset base foram coletados em 19/08/2024 do site Amazon e convertidos para a cotação do dólar de 22/08/2024 (5.4 + impostos).
- Estimativas como o cálculo de bottleneck (gargalo) e o consumo de energia das peças serão feitas a partir de [fórmulas especulativas](./data/jsons/functions.js) a partir de observações de resultados em aplicativos de análise de performance.

Funções:
1. Calcular o possível bottleneck dada uma combinação de CPU e GPU.
2. Calcular e criar um ranking dos melhores custos-benefícios de GPU ou CPU.
3. Analisar e encontrar a melhor combinação possível dentro de um orçamento.
4. Determinar o consumo de energia médio dado um número de horas médio de uso diário.

- [Tables](./data/tables.sql)