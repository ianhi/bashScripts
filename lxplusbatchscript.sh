#!/bin/bash
cd /afs/cern.ch/work/i/ihuntisa/WORK/RUTGERS/CMSSW_5_3_20/src
#cmsenv
eval `scramv1 runtime -sh`
cd /afs/cern.ch/work/i/ihuntisa/WORK/RUTGERS/CMSSW_5_3_20/src/GeneratorInterface/QPythiaInterface/test/
nJobs=3
export nEvents=2000
i=0
while [ $i -le $nJobs ];
do
    let "start=i*500"
    let "end=(i+1)*500"
    export jobNum=i
    bsub -R "pool>5000" -M 300000 -q 1nd -J job_${i} < /afs/cern.ch/work/i/ihuntisa/WORK/RUTGERS/bashScripts/submit.sh
    let "i++"
done
echo "submit all jobs!"
