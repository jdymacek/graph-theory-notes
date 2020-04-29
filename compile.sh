#!/bin/bash
# Script to compile dot files and LaTeX document

dir="./"

for d in "./Chapter"*
do
    echo $d
    if [ -d "$d" ]
    then
        cd "$d"
        for dot in *.dot
        do
            file=${dot%".dot"}
            if [[ $dot == n-* ]]
            then
                file="${file#"n-"}.pdf"
                echo "Compiling (neato): $dot - $file"
                neato -Tpdf $dot -o $file
            elif [[ $dot == c-* ]]
            then
                file="${file#"c-"}.pdf"
                echo "Compiling (circo): $dot - $file"
                circo -Tpdf $dot -o $file
            else
                echo "Error compiling $dot: unrecognized DOT file prefix (use n- or c-)"
            fi
        done
        cd ../
    fi
done

pdflatex cmsc420-notes.tex
bibtex ./cmsc420-notes.aux
pdflatex cmsc420-notes.tex
pdflatex cmsc420-notes.tex
pdflatex cmsc420-notes.tex
makeidx cmsc420-notes.idx
makeindex cmsc420-notes.idx
pdflatex cmsc420-notes.tex
