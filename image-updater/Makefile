pruneunused:
	echo "Deleting unused images"
	docker prune images
	echo "Done"

routineupdate: pullimages restartstack

fullupdate: routineupdate portainerupdate	#Use at own risk

portainerupdate:
	echo "Pulling Image"
	docker pull portainer/portainer-ce:latest
	echo "Stop Container"
	docker stop portainer
	echo "Removing old Container"
	docker rm portainer
	echo "Installing new Container"
	docker run -d -p 8000:8000 -p 9443:9443 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
	echo "Done"

pullimages:
	echo "Pulling latest images"
	docker-compose pull --parallel

restartstack:
	./restartstack.sh
	echo "Done. Please prune unused images."
