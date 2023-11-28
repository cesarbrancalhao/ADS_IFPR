while true
do
    echo "1. Exibir o status da utilização das partições do sistema: df -h"
    echo "2. Exibir a relação de usuários logados: who"
    echo "3. Exibir a data e hora do sistema: date"
    echo "4. Sair"
    echo -n "Informe a opção: "
    read opcao

    case $opcao in
        1) df -h ;;
        2) who ;;
        3) date ;;
        4) exit ;;
        *) echo "Opção não disponível" ;;
    esac
done