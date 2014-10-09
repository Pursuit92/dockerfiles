TAG = $(shell basename $(shell pwd))
IMG = $(shell basename $(shell dirname $(shell pwd)))


all:
	docker build --force-rm --tag jechas01/${IMG}:${TAG} .
