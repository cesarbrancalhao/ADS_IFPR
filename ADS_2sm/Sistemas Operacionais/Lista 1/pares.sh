if [ $# -ne 1 ]
then
  echo "Informe um (1) parâmetro."
  exit 1
fi

num=$1
i=0

while [ $i -le $num ]
do
  if [ $(expr $i % 2) -eq 0 ]
  then
    echo -n "$i "
  fi
  let i++
done
echo