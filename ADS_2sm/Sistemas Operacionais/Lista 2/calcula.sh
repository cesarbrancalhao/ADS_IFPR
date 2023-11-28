function conta {
    op1=$1
    opr=$2
    op2=$3

    case $opr in
        +) echo "$op1 + $op2 = $(($op1 + $op2))";;
        -) echo "$op1 - $op2 = $(($op1 - $op2))";;
        x) echo "$op1 x $op2 = $(($op1 * $op2))";;
        /) echo "$op1 / $op2 = $(($op1 / $op2))";;
        \*) echo "O oeperador correto para multiplicação é 'x'";;
        *) echo "Operação inválida, operador desconhecido.";;
    esac
}

if [ $# -gt 1 ]
then
    echo "Comando inválido, por favor retire os parâmetros ou os coloque em uma string com aspas."
    exit
else
    if [ $# -eq 1 ]
    then
    op1=$(echo $1 | cut -d ' ' -f 1)
    opr=$(echo $1 | cut -d ' ' -f 2)
    op2=$(echo $1 | cut -d ' ' -f 3)

    else
    read -p "Insira a conta: " inpConta
    op1=$(echo $inpConta | cut -d ' ' -f 1)
    opr=$(echo $inpConta | cut -d ' ' -f 2)
    op2=$(echo $inpConta | cut -d ' ' -f 3)
    fi
fi

conta $op1 $opr $op2