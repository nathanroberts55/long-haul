#!/bin/bash

# Get the title from the command line arguments or use default
title="${1:-Blog Post Title}"

# Get the current date
current_date=$(date +%Y-%m-%d)
# Format the title for the filename
formatted_title=$(echo "$title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
# Create the filename
filename="${current_date}-${formatted_title}.md"
# Define the file path
file_path="_posts/${filename}"

# Create the content for the file
content="---
layout: post
title:  \"$title\"
author: \"Nate Roberts\"
date:   $current_date
comments: true
description: \"\"
image: \"\"
---

<p class=\"intro\"><span class=\"dropcap\"></span>

Hopefully, this was informative and helpful information. Feel free to leave a comment about any of the information, products, or questions that you have. Thanks for reading!
"

# Write the content to the file
echo "$content" > "$file_path"

echo "Blog post '$title' created successfully at $file_path"
