#!/bin/bash

notedir="$HOME/paper/notes"

highest_num=$(ls $notedir | grep -oP '^\d+' | sort -nr | head -n1)

next_num=$((highest_num+1))

new_file="${notedir}/${next_num}.md"

nvim "$new_file"
