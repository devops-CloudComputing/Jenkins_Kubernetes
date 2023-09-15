In this project we will see deployment on kubernetes using jenkins CICD pipeline, A developer will write the docker file and once he push the file on github or any commit occurred on github, it will notify the jenkins through webhook, jenkins will pull all the code from github repository and build the code after code building and testing jenkins will ssh to the ansible server and start executing the image, basically it will build the docker image based on the docker file pushed by the developer, once it build the image then it will tag it and push it to the docker hub. The second task of ansible server is to ssh the kubernetes cluster and run the playbook so run the kubectl command on K8s cluster and it will try to fetch the latest image form docker hub and using that image it will create the container and this will be access through service.

Pre-Requisites:

Below are some prerequisites to do this project:

Git, linux, Jenkins, Docker, Docker Hub account, Ansible, Kubernetes, Three EC2 instances(jenkins, ansible, web app→ kubernetes cluster).
Below is the link of step by step process of whole project:
https://medium.com/@ghazanfarali9595/real-time-complete-jenkins-kubernetes-devops-project-5e08745c211e
