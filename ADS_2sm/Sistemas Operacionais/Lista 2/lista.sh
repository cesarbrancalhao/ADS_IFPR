if [ $# -eq 0 ]
then
    echo "Insira o caminho do diretório como um parâmetro."
else
    for item in `ls $1`
    do
        if [ -d "$1/$item" ]
        then
            echo "$item (dir)"
        else
            echo "$item"
        fi
    done
fi