# only cov read on x an cov read y is needed to determinated to the sex
xcov=$(echo "scale=4; $(samtools idxstats $1 | grep "X" | cut -f 3)" | bc)
ycov=$(echo "scale=4; $(samtools idxstats $1 | grep "Y" | cut -f 3)" | bc)
rat=$(echo "scale=4; ${xcov}/${ycov}" | bc)
echo "$1 $xcov $ycov $rat"

#plot a graph and find the threshold
