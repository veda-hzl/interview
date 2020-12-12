#!/bin/bash

DB_FILE=../../data/foo.csv

awk -F',' '
{

	group_sum[$2] += $1;
	group_num[$2] += 1;

} END {

	for( var in group_num)
	{
		print group_sum[var]/group_num[var], var;
	}

}' $DB_FILE
