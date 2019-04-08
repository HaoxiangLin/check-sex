Scripts for checking the sex of WGS samples
-------------------------------------------

### Description
Sometimes it is useful to check the biological sex of a sequenced sample
for QC purposes. It queries indexes or BAM files (depending on the script used)
to check for the coverage ration between the X and Y chromosomes.

### Output
The output is simply a numeric ratio of the X Y chromosome coverage  It looks like this:
```
X cover reads  <tab> Y cover reads <tab> X / Y ratio : 0.9917
```

### Usage
The shell script can be run directly and requires samtools to be globally available on the
system path.
```
    ./check_sex_samtools.sh <sample.bam>
```

