CREATE OR REPLACE VIEW orcamento_view AS
SELECT
    calculoOrcamento(4000) AS orcamento,
    calculoTDP(105, 41, 1, 10) AS consumo;

CREATE OR REPLACE VIEW showcase_view AS
SELECT
    FORMAT('%s', calculoRanking('cpu', 5)) AS cpu,
    FORMAT('%s', calculoRanking('gpu', 5)) AS gpu;

CREATE OR REPLACE VIEW bottleneck_view AS
SELECT
    FORMAT('Combinação: %s', calculoBottleneck(1, 1)) AS TOP1,
    FORMAT('Combinação: %s', calculoBottleneck(2, 2)) AS TOP2,
    FORMAT('Combinação: %s', calculoBottleneck(3, 3)) AS TOP3,
    FORMAT('Combinação: %s', calculoBottleneck(4, 4)) AS TOP4,
    FORMAT('Combinação: %s', calculoBottleneck(5, 5)) AS TOP5,
    FORMAT('Combinação: %s', calculoBottleneck(6, 6)) AS TOP6,
    FORMAT('Combinação: %s', calculoBottleneck(7, 7)) AS TOP7,
    FORMAT('Combinação: %s', calculoBottleneck(8, 8)) AS TOP8,
    FORMAT('Combinação: %s', calculoBottleneck(9, 9)) AS TOP9,
    FORMAT('Combinação: %s', calculoBottleneck(10, 10)) AS TOP10;