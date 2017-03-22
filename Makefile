run_jenkins:
	docker run -d --name jenkins-wsb \
		-p 8080:8080 \
		-v $$(pwd)/jenkins:/var/jenkins_home \
		jenkins:latest
