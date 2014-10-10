#!/bin/bash

images=$(cat images)

. functions.sh

for d in $images
do
	pushd $d
	build_image

	img=$(dirname $d)
	tag=$(basename $d)
	docker push jechas01/$img:$tag
	popd
done
