sidecar:
	podman build -f ./build/sidecar/Dockerfile --tag docker.io/deeplythink/nginx-reloader:v1 .
	podman push docker.io/deeplythink/nginx-reloader:v1
self-container:
	podman build -f ./build/sidecar/Dockerfile --tag docker.io/deeplythink/mynginx:v1 .
	podman push docker.io/deeplythink/mynginx:v1
