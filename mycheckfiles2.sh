#from checkfiles.sh script
#echo "Number of hkl files"
#find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

#echo "Number of mda files"
#find mountains -name "firings.mda" | wc -l

#echo "Time taken (s)"
#tail pipe-slurm*.out

#checkfiles 2.sh script
echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "#==========================================================="
echo "Start Times"
echo "==> rplpl-slurm.queue1-dy-r5a-2xlarge-2.3.out <=="
find . -name "rplpl-slurm.queue1-dy-r5a-2xlarge-2.3.out" -exec grep -Po 'time.struct_time\(.*\)' {} \; | head -n 1
echo
echo "==> rplspl-slurm.queue1-dy-r5a-2xlarge-2.4.out <==" 
find . -name "rplspl-slurm.queue1-dy-r5a-2xlarge-2.4.out" -exec grep -Po 'time.struct_time\(.*\)' {} \; | head -n 1
echo
echo "End Times"
echo "==> rplpl-slurm.queue1-dy-r5a-2xlarge-2.3.out <=="
find . -name "rplpl-slurm.queue1-dy-r5a-2xlarge-2.3.out" -exec grep -Po 'time.struct_time\(.*\)' {} \; | sed -n '2p'
find . -name "rplpl-slurm.queue1-dy-r5a-2xlarge-2.3.out" -exec grep -Po '\d+\.\d+' {} \; | awk 'END {print}'
find . -name "rplpl-slurm.queue1-dy-r5a-2xlarge-2.3.out" -exec grep -Pzo '\{\n\s+"MessageId": "[^"]+"\n\}' {} \;
echo
echo "==> rplspl-slurm.queue1-dy-r5a-2xlarge-2.4.out <=="
find . -name "rplspl-slurm.queue1-dy-r5a-2xlarge-2.4.out" -exec grep -Po 'time.struct_time\(.*\)' {} \; | sed -n '2p'
find . -name "rplspl-slurm.queue1-dy-r5a-2xlarge-2.4.out" -exec grep -Po '\d+\.\d+' {} \; | awk 'END {print}'
find . -name "rplspl-slurm.queue1-dy-r5a-2xlarge-2.4.out" -exec grep -Pzo '\{\n\s+"MessageId": "[^"]+"\n\}' {} \;
echo "#==========================================================="

