#!/bin/bash

nodes=("50" "100" "150" "200" "250" "300" "350" "400" "450" "500")
attn=("50" "100" "150" "200" "250" "300" "350" "400" "450" "500" "550" "600" "650" "700" "750" "800" "850" "900" "950" "1000")

for node in ${nodes[@]}
do
        for at in ${attn[@]}
        do
                python3 csimodel_${1}.py Dataset/Data data/${1} ${node} ${at} | tee data/${1}_${node}_${at}.log;
        done;
done;
