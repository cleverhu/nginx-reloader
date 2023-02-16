USERNAME?="deeplythink"
sidecar:
	podman build -f ./build/sidecar/Dockerfile --tag docker.io/$(USERNAME)/nginx-reloader:v1 .
	podman push docker.io/$(USERNAME)/nginx-reloader:v1

self-dockerfile:
	podman build -f ./build/self-dockerfile/Dockerfile --tag docker.io/$(USERNAME)/nginx-with-hotload:1.23.3 .
	podman push docker.io/$(USERNAME)/nginx-with-hotload:1.23.3

reloader:
	kubectl apply -f ./deploy/reloader/tests/
