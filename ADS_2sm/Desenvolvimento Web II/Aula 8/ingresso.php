<?php

class Ingressso {
    protected $valor;
}

class IngressoVip extends Ingressso {
    private $valorAd;

    public function __construct($valor, $valorAd) {
        $this->valor = $valor;
        $this->valorAd = $valorAd;
    }

    public function getValorIngresso() {
        return $this->valor + $this->valorAd;
    }
}

$ingresso = new IngressoVip(10,30);

echo "Valor do ingresso: R$" . $ingresso->getValorIngresso() . "<br>";

print_r($ingresso);
