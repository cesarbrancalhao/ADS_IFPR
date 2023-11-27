if [ $# -ne 1 ]
then
  echo "Insira apenas um parâmetro."
  exit 1
fi

arq=$1

if [ -f "$arq" ]
then
  tam=$(ls -l "$arq" | cut -d ' ' -f 5)
  echo "O tamanho do arquivo '$arq' é $tam bytes."
else
  echo "O arquivo '$arq' não existe."
fi

exit 0