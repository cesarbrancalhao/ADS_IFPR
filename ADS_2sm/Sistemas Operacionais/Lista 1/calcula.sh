if [ $# -ne 3 ]; then
  echo "Por favor, informe três parâmetros."
  exit 1
fi

num1=$1
op=$2
num2=$3

case $op in
  +) res=$(echo "$num1 + $num2" | bc) ;;
  -) res=$(echo "$num1 - $num2" | bc) ;;
  x) res=$(echo "$num1 * $num2" | bc) ;;
  /) 
    if [ $num2 -eq 0 ]; then
      echo "Infinito."
      exit 1
    fi
    res=$(echo "scale=2; $num1 / $num2" | bc) 
    ;;
  *) echo "Operação inválida."; exit 1 ;;
esac

echo "O resultado é $res."
exit 0