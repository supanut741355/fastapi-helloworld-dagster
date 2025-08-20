
run:
	docker build --no-cache --platform linux/amd64 -t fastapi-hello .

	docker tag fastapi-hello:latest asia-southeast1-docker.pkg.dev/myorder-beta/kubernetes/mod-poc/fastapi-hello:0.2.0

	docker push asia-southeast1-docker.pkg.dev/myorder-beta/kubernetes/mod-poc/fastapi-hello:0.2.0


