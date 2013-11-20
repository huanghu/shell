#!/bin/sh
#run all workflow--vendor

path='/home/huanghu/main/vendor'
filelist=`ls $path`
for file in $filelist
do
	sub_path=$path"/"$file

	#foreach sub_path get job.proties
	sub_filelist=`ls $sub_path`
	for sub_file in $sub_filelist
	do
		sub_all_path=$sub_path"/"$sub_file
		oozie job -oozie http://192.168.232.60:11000/oozie/ -config $sub_all_path/job.properties -run
	done
done
