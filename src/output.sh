#!/bin/bash
BASEDIR=$PWD
set +x
. .colors.sh
set -e
if [ ! -f output.csv ]; then
    echo -e "$(c R)[error] The model has not generated the output output.csv"
    exit 1
else
    echo -e "$(c G )[success] The model has generated the output output.csv"
    mv output.csv ${OUTPUTS1}
fi
