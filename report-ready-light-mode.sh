#!/bin/bash

# Check if the folder path is provided as a command-line argument
if [ $# -eq 0 ]; then
	echo "Usage: ./report-ready-light-mode.sh /path/to/folder"
	echo "Please provide the folder path as a command-line argument."
	exit 1
fi

# Get the folder path from the command-line argument
folder_path=$1

# Check if the provided folder path is valid
if [ ! -d "$folder_path" ]; then
	echo "Invalid folder path: $folder_path"
	exit 1
fi

# Create new folder in the provided path where the modified images will now be saved
new_folder="$folder_path/edited-images"
mkdir -p "$new_folder" # -p so it's created only if it doesn't exist

# Iterate over each file in the folder
for file in "$folder_path"/*
   
do
	# Check if $file is a regular file
	if [ -f "$file" ]; then	
		# Get the filename
		filename=$(basename "$file")

        	# Extract the file extension
        	extension="${filename##*.}"

        	# Remove the extension from the filename
        	filename_no_ext="${filename%.*}"

        	# Create the modified filename by appending "_edited" and the extension
      	  	modified_filename="${filename_no_ext}_edited.${extension}"


		# Check if the modified file already exists in the "edited-images" folder
		if [ -f "$new_folder/$modified_filename" ]; then
			echo "[*] Skipping '$filename' as it was already edited."
        	else
            		# keep your magick binary and script in the same folder
			./magick convert "$file" -bordercolor black -border 0.5%x1% "$new_folder/$modified_filename"
			echo "[*] Adding black border to '$filename'..."
        	fi
	fi
done     
