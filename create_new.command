#!/bin/bash

# This script is designed to simplify podcast editing workflow



# Create new directories and copy files
createNew() {
    # Obtain podcast name
    pod_name=${PWD##*/}

    # get episode number
    echo 'What episode number do you want to use?'
    read -p 'Enter the number and press enter: ' episode_num

    # project file directory actions
    cd ./Project\ Files/
    cp -an "$pod_name Episode" "$pod_name Episode $episode_num"
    cd ./"$pod_name Episode $episode_num"
    mv "$pod_name Episode.sesx" "$pod_name Episode $episode_num.sesx"

    # raw materials drirectory actions
    cd ../../Raw\ Material
    mkdir "Episode $episode_num"
    cd ../
}

# Script startup message
startupMessage() {
    echo "
               _                        _
    /\        | |                      | |            
   /  \  _   _| |_ ___  _ __ ___   __ _| |_ ___  _ __
  / /\ \| | | | __/ _ \| '_ \` _ \ / _\` | __/ _ \| '__|
 / ____ \ |_| | || (_) | | | | | | (_| | || (_) | |   
/_/    \_\__,_|\__\___/|_| |_| |_|\__,_|\__\___/|_|   

        WELCOME TO PODCAST WORKFLOW AUTOMATOR
         Simplyfying the workflow of idiots.
    "
}



# ~~~ MAIN METHOD ~~~
main() {
    clear
    # Show the user the startup message
    startupMessage
    # execute the operations
    createNew
    echo ""
    echo "Done doing all the work for you..."
    echo "Exiting..."
    sleep 4
}

# ~~~ ALL CODE EXECUTION ~~~

# get the directory of the script & cd to that directory
script_dir=$(dirname "$0")
cd "$script_dir"

# call main method
main