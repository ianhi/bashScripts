#!bin/bash
i=0
base="root://eosuser.cern.ch://eos/user/i/ihuntisa/Jewel/"

# IF all=true then you don't need to modify list
# 0 for run number which failed
all=false
medType=med1
numEvent=3000
list=(
    1 # 0 
    1 # 1
    0 # 2
    1 # 3
    1 # 4
    0 # 5
    1 # 6
    1 # 7
    0 # 8
    1 # 9
    0) # 10

while [ $i -lt 11 ]
do
    if [ ${list[$i]} -eq 1 ] || $all
    then
	echo $i
    fi
    
	
    if [ ${list[$i]} -eq 1 ]
    then
	echo "${base}${medType}/JewelDijet_${i}_numEvent${numEvent}.root" >> ${medType}_fileList.txt
    fi
    let 'i++'
done
echo "======================================"
cat ${medType}_fileList.txt

