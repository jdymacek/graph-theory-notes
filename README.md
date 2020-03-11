# Graph Theory Notes

A collection of notes from graph theory. This collection is a student-written project to document the lectures from the CMSC 420 - Graph Theory course. In this pages, you will find much ado about graphs, trees, and more. As more students document their assigned areas of the course, more will be added to the master branch, but be sure to check other branches for in-progress work.

## File Structure

The master LaTeX file in this project is `cmsc420-notes.tex`, which pulls from the LaTeX files in the Chapter subdirectories. Each chapter is contained in its own folder - all TeX files, DOT files, PDFs, and bibliographies of a particular chapter are isolated in that chapter's directory. 

Upon compilation, auxilliary files are created, which include PDFs for DOT files in Chapter directories and a number of important LaTeX files. These files are important and are used during the compile process. However, these have been added to the `.gitignore` file, so when pushing changes, these files can be safely ignored. 

## Compilation

There is a useful script included in the parent directory of the project, `compile.sh`. This is a BASH script which does several things:
1. Compiles all DOT files in all subdirectories
  * If the filename begins with `n-`, then the DOT file is compiled with `neato`
  * If the filename begins with `c-`, then the DOT file is compiled with `circo`
2. Compiles the master LaTeX document `cmsc420-notes.tex` using `pdflatex`
3. Compiles the bibliographic and table of contents sections in `cmsc420-notes.aux` using `bibtex`
4. Flattens the final product by running `pdflatex` twice on `cmsc420-notes.tex`

To compile all files, just enter the topmost directory of this repository and run `./compile.sh`.

## Adding to this Project

For the sake of simplicity, please try to follow the structure of the project - the compile script will work for any created subdirectories for chapters and will work if all DOT files follow the naming conventions specified in the compilation section. 

When adding a citation, please add the resource to the particular chapter's `bibliography.bib` file (if there isn't one, go ahead and create one)! There is a link in the resources to a website that generates a BibTeX citation. 

Alternatively, if citing a Wikipedia article, a convenient way to find a BibTeX citation is to click "Cite this Article" along the left pane in the Tools section, and scroll down until you see the BibTex entry. Add this to the `bibliography.bib` file.

## Resources

[Overleaf, an excellent LaTeX resource](https://www.overleaf.com/) \
[Graphviz, home page for DOT file documentation](https://graphviz.org/) \
[DOT file documentation](https://graphviz.gitlab.io/_pages/doc/info/attrs.html) \
[Citation generator for BibTeX citations](https://www.bibme.org/bibtex) 
