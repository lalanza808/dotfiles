#!/usr/bin/python

import math
import random
import sys
import time

n = math.log(2**32, 128)

print "ENCRYPTING SHELL"
for i in xrange(86, 0, -1):
    x = random.randint(int(i**n), int(i**n * 1.1))
    time.sleep(0.02)
    sys.stdout.write("\r0x%.*X" % (8, x))
    sys.stdout.flush()

sys.stdout.write("\r0x00000000\n\n")
