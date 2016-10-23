#! /bin/sh

TOTAL=$(ls coreutils-8.25/src | wc -l)
NPOINTS=$(ls coreutils-8.25/src | grep "\." | wc -l)
echo "Total de Arquivos: $TOTAL"
echo "Total de Arquivos sem ponto: $(expr $TOTAL - $NPOINTS )"
