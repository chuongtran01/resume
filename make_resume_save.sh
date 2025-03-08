#!/bin/bash

# Assuming this part is correct and repeated just for context:
pdflatex ChuongTran_Resume.tex
open ChuongTran_Resume.pdf &

# Correct path to the destination folder
DEST_FOLDER_1="/Users/chuongtran/Desktop/Career/Software Engineer"
DEST_FOLDER_2="/Users/chuongtran/Desktop/Projects/WEB-APPLICATION/porfollio-website/portfolio-website/public"
# Filename of the resume PDF
RESUME_FILE="ChuongTran_Resume.pdf"
# Correctly forming the full path to the old resume in the destination folder
OLD_RESUME="$DEST_FOLDER_1/$RESUME_FILE"
# Now correctly checking if the old resume file exists
if [ -f "$OLD_RESUME" ]; then
    # Correctly renaming the old resume file by appending a timestamp or version number
    mv "$OLD_RESUME" "${DEST_FOLDER_1}/ChuongTran_Resume_$(date +%m-%d-%Y).pdf"
fi


# Copying the new resume file to the destination folder
cp "$RESUME_FILE" "$DEST_FOLDER_1/"
cp "$RESUME_FILE" "$DEST_FOLDER_2/"

# Cleaning up auxiliary files
rm -f *.aux *.log *.toc *.blg *.out *.bbl *.fls *.fdb_latexmk
