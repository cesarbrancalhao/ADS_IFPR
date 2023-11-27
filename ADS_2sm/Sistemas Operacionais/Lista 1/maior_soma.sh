if [ $# -ne 2 ]
then
  echo "Informe dois parâmetros."
  exit 1
fi

num1=$1
num2=$2

let soma=num1+num2

if [ $num1 -gt $num2 ]
then
  echo "O maior número é $num1."
else
  echo "O maior número é $num2."
fi

echo "A soma dos números é $soma."