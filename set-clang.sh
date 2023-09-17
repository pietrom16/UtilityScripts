#!/bin/bash

# set-clang.sh

# Set the default compiler to the latest clang/clang++ installed

# Copy these in ~/.profile
#export PATH=/opt/llvm/clang+llvm-7.0.1-x86_64-linux-gnu-ubuntu-18.04/bin:${PATH}
#export LD_LIBRARY_PATH=/opt/llvm/clang+llvm-7.0.1-x86_64-linux-gnu-ubuntu-18.04/lib:${LD_LIBRARY_PATH}

alias cc=clang
alias CC=clang
alias c++=clang++
alias CXX=clang++

cvers=$(CXX --version)
echo  "Default C/C++ compiler: $cvers"
echo
