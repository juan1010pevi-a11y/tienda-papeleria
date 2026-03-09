#!/usr/bin/env bash

echo "=== TIENDA DE PAPELERÍA ==="

declare -a productos=("Lápiz de grafito HB" "Borrador de nata" "Cuaderno cuadriculado 100h" "Esfero azul" "Marcador resaltador" "Regla plástica 30cm" "Tijeras escolares" "Colbón escolar 60ml" "Carpeta cartón tamaño carta" "Block hojas blancas 50h")

declare -a precios=(1000 1200 5500 1500 3000 2000 4000 3500 2500 6000)

total_final=0

for i in {0..9}; do
    echo -n "¿Cuántas unidades de ${productos[$i]} (${precios[$i]} pesos)? "
    read cantidad
    subtotal=$((cantidad * ${precios[$i]}))
    echo "  Total ${productos[$i]}: $subtotal pesos"
    total_final=$((total_final + subtotal))
done

echo ""
echo "=== TOTAL FINAL DE LA COMPRA: $total_final pesos ==="
