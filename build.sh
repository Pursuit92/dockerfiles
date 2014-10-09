#!/bin/bash

images=$(cat images)

build_image(){
	img=$(basename $(dirname $(pwd)))
	tag=$(basename $(pwd))

	docker build --tag jechas01/$img:$tag --force-rm .
}

for d in $images
do
	pushd $d
	build_image
	popd
done
