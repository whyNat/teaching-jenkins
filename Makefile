run_jenkins:
	docker run -d --name jenkins-wsb \
		-p 9090:8080 \
		-v $$(pwd)/jenkins:/var/jenkins_home \
		devops/jenkins

bash_jenkins:
	docker exec -ti jenkins-wsb  /bin/bash

build_jenkins:
	docker build -t devops/jenkins -f Dockerfile .

show_me_password:
	cat jenkins/secrets/initialAdminPassword
