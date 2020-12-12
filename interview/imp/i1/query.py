#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import csv

fname = '../../data/foo.csv'

if __name__ == "__main__":
	print("Begin to proc DB-file ...")

group_dict = {}

with open(fname, 'r') as f:
	reader = csv.reader(f)

	try:
		for row in reader:
			if row[1] not in group_dict:
				group_dict[row[1]] = [0, 0]

			v = group_dict[row[1]]
			v[0] += 1
			v[1] += int(row[0])

	except csv.Error as e:
		print(e)

for k,v in group_dict.items():
	print("%.1f %s" % (v[1]/v[0], k))

