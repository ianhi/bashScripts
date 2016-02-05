#!bin/bash
i=0
base="root://eosuser.cern.ch://eos/user/i/ihuntisa/Jewel/"

# IF all=true then you don't need to modify list
# 0 for run number which failed
all=false
medType=med4
numEvent=10000
list=(
    1 # 0 
    0 # 1
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
    case $i in
	0) 
	    export low=15
	    export high=30
	    echo $low
	    echo $high
	    ;;
	1)
	    export low=30
	    export high=50
	    echo $low
	    echo $high
	    ;;
	2)
	    export low=50
	    export high=80
	    echo $low
	    echo $high
	    ;;
	3)
	    export low=80
	    export high=120
	    echo $low
	    echo $high
	    ;;
	4)
	    export low=120
	    export high=170
	    echo $low
	    echo $high
	    ;;
	5)
	    export low=170
	    export high=220
	    echo $low
	    echo $high	    
	    ;;
	6)
	    export low=220
	    export high=280
	    echo $low
	    echo $high
	    ;;
	7)
	    export low=280
	    export high=330
	    echo $low
	    echo $high
	    ;;
	8)
	    export low=330
	    export high=400
	    echo $low
	    echo $high
	    ;;
	9)
	    export low=400
	    export high=460
	    echo $low
	    echo $high
	    ;;
	10)
	    export low=460
	    export high=540
	    echo $low
	    echo $high
	    ;;
	11)
	    export low=540
	    export high=1000
	    echo $low
	    echo $high
	    ;;
    esac
    if [ ${list[$i]} -eq 1 ] || $all
    then
	echo $i
    fi
    
    
    if [ ${list[$i]} -eq 1 ]
    then
	echo "${base}${medType}/${medType}_${low}_${high}_JewelDijet_${i}_numEvent${numEvent}.root" >> ${medType}_fileList.txt
    fi
    let 'i++'
done
echo "======================================"
cat ${medType}_fileList.txt

