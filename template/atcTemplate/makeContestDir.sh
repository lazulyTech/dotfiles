#!/bin/zsh

mkdir ${1}
cd ${1}
for var in a b c d e f
do
	cat ~/.dotfiles/template/atcTemplate/template.cpp > $var.cpp
done
mkdir cmake-build-debug
cat ~/.dotfiles/template/atcTemplate/CMakeLists.txt > CMakeLists.txt
cd cmake-build-debug
cmake ..
make
ln -s compile_commands.json ../compile_commands.json

