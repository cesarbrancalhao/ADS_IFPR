if [ $# -eq 0 ]
then
    read -p "Informe o usuário: " uNome
    cut -f1 -d ':' /etc/passwd | grep $uNome > /dev/null 2> /dev/null
    if [ $? -eq 0 ]
    then
        echo "O usuário $uNome está cadastrado na máquina."
    else
        echo "O usuário $uNome não está cadastrado na máquina."
    fi
else
    echo "Não insira parâmetros."
fi