
Deploying a Petshop Java Application with CI/CD, Docker, and Kubernetes on an Oracle VirtualBox 

Complited by: 
- Josh Dilipkumar Patel -  22BCE2692
- Shahil Raj - 22BCE2541
- Khushi Bhatnagar - 22BCE3804


Petshop Project source 

Files included:
- Dockerfile                : Multi-stage Dockerfile (build + runtime)
- Jenkinsfile               : Basic Jenkins pipeline (build, image push, deploy)
- Jenkinsfile_complete      : Complete pipeline example including SonarQube and checks
- deployment.yaml           : Kubernetes Deployment manifest
- service.yaml              : Kubernetes Service manifest
- k8s-manifests.yaml        : Combined deployment + service manifests

Notes:
- See the report for original snippets and context.
- The report references a GitHub repo https://github.com/Aj7Ay/jpetstore-6 and https://github.com/Aj7Ay/jpetstore-6/tree/master 
- You still need the full Java source.
- To build locally:
    - mvn clean package
    - docker build -t your-registry/petshop-app:latest .
    - docker push your-registry/petshop-app:latest
    - kubectl apply -f k8s-manifests.yaml

