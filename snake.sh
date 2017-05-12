#!/bin/bash

HEIGHT=${1:-10}
WIDTH=${2:-10}

echo "HEIGHT is ${HEIGHT}. WIDTH is ${WIDTH}."

BORDER=''
for ((i=1;i<=$(($WIDTH+2));i++)); do
    BORDER+="#"
done

declare -A FIELD

makeField(){
    for ((i=1;i<=HEIGHT;i++)); do
        for ((j=1;j<=WIDTH;j++)); do
            FIELD[$i,$j]=' '
        done
    done
}

printField(){
    echo "$BORDER"
    
    for ((i=1;i<=HEIGHT;i++)); do
        echo -n "#"
        for ((j=1;j<=WIDTH;j++)); do
            echo -n "${FIELD[$i,$j]}"
        done
        echo '#'
    done

    echo "$BORDER"
}

makeField
FIELD[5,5]='@'
printField
