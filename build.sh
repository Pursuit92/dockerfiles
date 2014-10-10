#!/bin/bash

images=$(cat images)

. functions.sh

for d in $images
do
	pushd $d
	build_image
	popd
done
