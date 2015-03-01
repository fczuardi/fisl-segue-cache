# faz download de 10 propostas da api do segue (uma pagina)
# a primeira pagina eh a 0 entao a pagina 1 contem propostas de id 10 ateh 19
PAGE=$1
PAGE_SIZE=10
BEGIN=$((PAGE * PAGE_SIZE))
END=$((BEGIN + PAGE_SIZE - 1))
echo [${BEGIN}-${END}]
cd data
curl -O http://segue-api.fisl16.softwarelivre.org/api/proposals/[${BEGIN}-${END}]
cd ..
