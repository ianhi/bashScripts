#!bin/bash

mkdir PNG_$(date '+%d-%b-%Y-%k-%M')
cd PNG_$(date '+%d-%b-%Y-%k-%M')
scp ihuntisa@lxplus.cern.ch:/afs/cern.ch/work/i/ihuntisa/WORK/RUTGERS/CMSSW_5_3_20/src/MonteMacros/*.png .
