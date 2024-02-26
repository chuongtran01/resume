#!/bin/bash

# Navigate to your repository directory
cd /Users/chuongtran/Desktop/Projects/WEB-APPLICATION/porfollio-website/portfolio-website

# Add all changes to the staging area
git add .

# Commit the changes with a message
commit_message="Modified Resume"
git commit -m "$commit_message"

# Push the changes to your remote repository
git push 
