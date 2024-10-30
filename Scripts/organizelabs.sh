#!/bin/bash

# Automates searching for any lab that is marked Completed and then moves it to the Completed directory

in_progress_labs_path="$HOME/Information-Technology/CompTIA_A+/Labs/In-Progress/"
completed_labs_path="$HOME/Information-Technology/CompTIA_A+/Labs/Completed"

grep -rl "Completion Status: Completed" $in_progress_labs_path | xargs -I {} mv {} $completed_labs_path
