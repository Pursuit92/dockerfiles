#!/bin/bash

images=$(cat images)

for i in $images
do
	img=$(dirname $i)
	tag=$(basename $i)
	docker push jechas01/$img:$tag
done
