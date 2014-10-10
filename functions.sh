build_image(){
	img=$(basename $(dirname $(pwd)))
	tag=$(basename $(pwd))

	docker build --tag jechas01/$img:$tag --force-rm .
}

