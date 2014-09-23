#!/usr/bin/env python

import sys

for text in sys.stdin:
	print text.replace('-', '')

