#!/bin/bash
  
for i in 1 2 3 4
do
for j in 1 3 5
do
make
make run
make clean
mv Cell.cpp Cell.txt;
let ja=$j+2;
sed -i 's/'NL_LTP=$j'/'NL_LTP=$ja'/' Cell.txt;
mv Cell.txt Cell.cpp;
done

mv Cell.cpp Cell.txt;
sed -i 's/'NL_LTP=7'/'NL_LTP=1'/' Cell.txt;
mv Cell.txt Cell.cpp;

mv Param.cpp Param.txt;
let ia=$i+1;
let ib=$i\*$i;
let ic=$ia\*$ia;
sed -i 's/'NumcellPerSynapse=$ib'/'NumcellPerSynapse=$ic'/' Param.txt;
mv Param.txt Param.cpp;
mv Cell.h Cellh.txt;
sed -i 's/'$ib'/'$ic'/g' Cellh.txt;
mv Cellh.txt Cell.h;
done
