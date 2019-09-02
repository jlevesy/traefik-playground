.PHONY: start-k3d
start-k3d:
	 @k3d create \
		 --workers=3 \
		 --server-arg --no-deploy \
		 --server-arg traefik \
		 --publish 80:80 \ # http
		 --publish 443:443 \ # https
		 --publish 8080:8080 \ # admin
		 --publish 8081:8081 # tcp
