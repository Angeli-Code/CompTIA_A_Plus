#!/bin/bash

# Script automates the process of making a new lab

root_directory="$(git rev-parse --show-toplevel)"
template_file_path="$root_directory/Templates/Lab_Template.md"
destination_file_path="$root_directory/Labs/In-Progress"

read -p "Enter Lab Number: " lab_number
read -p "Enter Lab Title: " lab_title

formatted_title=$(echo "$lab_title" | tr ' ' '-')
destination_file_path="$destination_file_path/Lab[$lab_number]:$formatted_title.md"

cp "$template_file_path" "$destination_file_path"

echo "New lab created: $destination_file_path"
