.PHONY: start-k3d
start-k3d:
	 @k3d create \
		 --workers=3 \
		 --server-arg --no-deploy \
		 --server-arg traefik \
		 --publish 80:80 \
		 --publish 443:443 \
		 --publish 8080:8080 \
		 --publish 8081:8081

.PHONY: deploy-traefik
deploy-traefik:
	@kubectl apply -f traefik/

.PHONY: deploy-apps
deploy-apps:
	@kubectl apply -f apps/
