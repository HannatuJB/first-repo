#!/bin/bash

# Directory containing files to be archived
SOURCE="/path/to/source/directory"

# Directory to move old files
ARCHIVE="/path/to/archive/directory"

# Number of days to considered old
DAYS_THRESHOLD=30

# Print header
echo "File Archiving Script"
echo "-------------------------"

# Check if source directory exists
if [ -d "$SOURCE" ]; then
    # Create archive directory if it doesn't exist
    mkdir -p "$ARCHIVE"
 # Find files older than the specified threshold
    find "$SOURCE" -type f -mtime +"$DAYS_THRESHOLD" -exec mv {} "$ARCHIVE" \;

    echo "File archiving complete!"
else
    echo "Error: Source directory does not exist."
fi

