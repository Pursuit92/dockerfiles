#!/bin/bash

images=$(cat images)

for d in $images
do
	pushd $d
	make
	popd
done
