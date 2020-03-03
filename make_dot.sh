for f in *.dot; do
    fname="${f%.*}"
    neato -Tpdf $f -o $fname.pdf
done

#fname="${1%.*}"
#neato -Tpdf $1 -o $fname.pdf

