from rich import print  # pip install rich

class Conta:
    def __init__(self, 
                 saldo=0,
                 limite=0,
                 pix="",
                 numero=""
                 ):
        disponivel = saldo + limite
        if disponivel <= 0:
            raise ValueError("Saldo e limite não podem ser menores ou iguais a zero.")
        if pix == "":
            raise ValueError("Chave pix não pode ser vazia.")
        self.saldo = saldo
        self.limite = limite
        self.pix = pix
        self.numero = numero
        self.agencia = 0
        self.banco = None
        self.cliente = None
    
    def transferir(self, pix: str, valor: float):
        """ 
        Realiza transferencia pix
        - valor a ser transferido não pode ser superior ao saldo em conta
        - se cliente possui limite adicional, poderá ser utilizado na transferencia
        """
        if pix == "":
            raise ValueError("Chave pix não pode ser vazia.")
        
        disponivel = self.saldo + self.limite

        if valor <= 0:
            raise ValueError("Valor da transação deve ser positivo.")
        
        if valor > disponivel:
            raise ValueError("O valor da transação é maior que o saldo disponível.")
        
        if pix == self.pix or pix == self.numero:
            raise ValueError("Não é possível fazer transações para a própria conta.")
        
        self.saldo -= valor
        print(f"Pix de R$ {valor} realizado para {pix}")
        
    def depositar(self, valor):
        """ adiciona grana no saldo """
        self.saldo += valor
        print(f"Deposito de [blue]R$ {valor}[/]")
    
    def consulta(self):
        """ 
        Consulta saldo em conta 
        """
        cl = "red" if self.saldo < 0 else "blue"
        print(f"Saldo atual R$ [{cl}]{self.saldo}[/]")

    def extrato(self):
        """ 
        Gera extrato das operações financeiras 
        D   R$ 2000  21/03
        C   R$ 350   21/03
        """
        pass


if __name__ == "__main__":
    
    print("*"*30)
    conta = Conta(saldo=3000, limite=1000, numero="12200-2")
    conta.consulta()
    print("*"*30)

    conta.transferir(pix="45-984011110", valor=2000)
    conta.consulta()

    print("*"*30)

    conta.depositar(350)
    conta.consulta()
        
    print("*"*30)

    conta.transferir(pix="fulano@gmail.com", valor=4000)
    conta.consulta()

    print("*"*30)

    conta.transferir(pix="fulano@gmail.com", valor=1000)
    conta.consulta()

    print("*"*30)

    conta.depositar(3050)
    conta.transferir(pix="45-984011110", valor=1000)
    conta.consulta()

    print("-"*30)
    conta.extrato()

