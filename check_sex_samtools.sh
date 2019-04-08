# only cov read on x an cov read y is needed to determinated to the sex
xcov=$(echo "scale=4; $(samtools idxstats $1 | grep "X" | cut -f 3))
ycov=$(echo "scale=4; $(samtools idxstats $1 | grep "Y" | cut -f 3))
rat=$(echo "scale=4; ${xcov}/${ycov}" | bc)
echo "$xcov $ycov $rat"

#plot a graph and find the threshold
