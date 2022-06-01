#!/usr/bin/env bash
DIAGRAMAS_DIR="."
DIAGRAMAS_UML=`ls $DIAGRAMAS_DIR`

plantuml $DIAGRAMAS_DIR

diagramas_png=`find $DIAGRAMAS_DIR -iname "*.png"`
for diagrama in $diagramas_png; do
	printf "%s\n" $diagrama
	kitty +kitten icat $diagrama
	# read -p "$diagrama"
done
