param (
    [string]$title = "Blog Post Title"
)

# Get the current date
$currentDate = Get-Date -Format "yyyy-MM-dd"
# Format the title for the filename
$formattedTitle = $title.ToLower().Replace(" ", "-").Replace(":", "")
# Create the filename
$filename = "$currentDate-$formattedTitle.md"
# Define the file path
$filePath = Join-Path -Path "_posts" -ChildPath $filename

# Ensure the _posts directory exists
if (-not (Test-Path -Path "_posts")) {
    New-Item -ItemType Directory -Path "_posts"
}

# Create the content for the file
$content = @"
---
layout: post
title:  "$title"
author: "Nate Roberts"
date:   $currentDate
comments: true
description: ""
image: ""
---

<p class="intro"><span class="dropcap"></span>

Hopefully, this was informative and helpful information. Feel free to leave a comment about any of the information, products, or questions that you have. Thanks for reading!
"@

# Write the content to the file
$content | Out-File -FilePath $filePath -Encoding utf8

Write-Output "Blog post '$title' created successfully at $filePath"
