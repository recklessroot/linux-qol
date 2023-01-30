#!/bin/env python3

from sys import argv

if len(argv) == 3 or len(argv) > 4 or len(argv) <= 1:
    print("range:\n  usage:\n    simple mode: range [int: end] - prints integers from 0 to [end]\n    full mode: range [int: start] [int: end] [int: increment] - prints integers from [start] to [end] by [increment] steps\n\n  ex: range 6 => 0,1,2,3,4,5,6\n\n  ex: range 2 10 2 => 2,4,6,8,10")
    quit()


if len(argv) == 2:
    start = 0
    end = int(argv[1])
    inc = 1
else:
    start = int(argv[1])
    end = int(argv[2])
    inc = int(argv[3])

for i in range(start, end + 1, inc):
    print(i)
