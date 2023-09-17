#!/bin/bash

# set-gcc.sh

# Copy these in ~/.profile
#export PATH=/opt/gcc/bin:${PATH}
#export LD_LIBRARY_PATH=/opt/gcc/lib:${LD_LIBRARY_PATH}

# Default
#export PATH=/usr/bin:${PATH}
#export LD_LIBRARY_PATH=/usr/lib:${LD_LIBRARY_PATH}

alias cc=gcc
alias CC=gcc
alias c++=g++
alias CXX=g++

cvers=$(CXX --version)
echo  "Default C/C++ compiler: $cvers"
echo


