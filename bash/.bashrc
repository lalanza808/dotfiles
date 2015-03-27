#!/bin/bash

# Startup script for BASH shells.
# Loads .rc files in nested folders
# github.com/lalanza808

for file in inc/*.rc
do
	source ${file}
done