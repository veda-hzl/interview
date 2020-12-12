#!/bin/bash

DATAFILE='../data/foo.csv'

# 如果数据文件已经存在则清除掉,产生新文件
if [ -e $DATAFILE ]; then
	echo 'remove the old db file'
	rm -f $DATAFILE
fi

for ((i=0; i<10000;i++));
do

	# 10000条数据分组到1000起始的最多100个分组里
	echo $RANDOM,$((1000+RANDOM%100)) | tee -a $DATAFILE

done

