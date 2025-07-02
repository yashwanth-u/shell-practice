#!/bin/bash

MOVIES=("Inception" "The Matrix" "Interstellar" "The Godfather" "Pulp Fiction")

echo "First Movie: ${MOVIES[0]}"
echo "Movie:${MOVIES[3]}"
echo "Total Movies: ${#MOVIES[@]}"
echo "All Movies: ${MOVIES[@]}"