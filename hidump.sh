#! /bin/bash 

if [ $# -eq 1 ]; then
    historyFile=$1
else
    echo hidump \<histFileName\>
    exit 1
fi

# timestamp pattern in Unix epoch format but with '#' prefix
tsPattern='(^#[0-9]{10,12})'

# echo Reading ${historyFile}

while read h; do 
    # echo; echo \"=============${h}===============\"; 

    if [[ ${h} =~ ${tsPattern} ]]; then 
        # echo Found TS
        ds=${h/\#/@}
        # echo DS: $ds
        dateTime=$( date -d "$ds" )
    else
        echo ${dateTime} ${h}
    fi
    
done < ${historyFile}

