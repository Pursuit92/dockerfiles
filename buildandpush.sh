#!/bin/bash

images=$(cat images)

for d in $images
do
	pushd $d
	build_image

	img=$(dirname $i)
	tag=$(basename $i)
	docker push jechas01/$img:$tag
	popd
done
