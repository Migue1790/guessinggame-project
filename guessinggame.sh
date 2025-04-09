#!/bin/bash

function ask_guess {
  echo "¿Cuántos archivos hay en el directorio actual?"
}

function check_guess {
  if [[ $1 -lt $2 ]]; then
    echo "Demasiado bajo. Intenta otra vez."
  elif [[ $1 -gt $2 ]]; then
    echo "Demasiado alto. Intenta otra vez."
  else
    echo "¡Felicidades! Adivinaste correctamente."
  fi
}

file_count=$(ls -1 | wc -l)
guess=-1

ask_guess

while [[ $guess -ne $file_count ]]; do
  read guess
  check_guess $guess $file_count
done
