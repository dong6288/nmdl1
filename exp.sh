#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9
do
make
make run
make clean

mv Param.cpp Param.txt
let ia=$i+1
sed -i 's/'lnum=$i'/'lnum=$ia'/' Param.txt;
mv Param.txt Param.cpp;
done
