cd /afs/cern.ch/work/i/ihuntisa/WORK/RUTGERS/CMSSW_5_3_20/src
#cmsenv
eval `scramv1 runtime -sh`
cd /afs/cern.ch/work/i/ihuntisa/WORK/RUTGERS/CMSSW_5_3_20/src
DATE = eval 'date +"%m-%d-%Y"'
cmsRun GeneratorInterface/QPythiaInterface/test/testQPythiaDijet.py output="QPythia_$DATE_$jobNum" maxEvents=nEvents
