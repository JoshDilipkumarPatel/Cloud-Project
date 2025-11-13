Complited by: 
- Josh Dilipkumar Patel -  22BCE2692
- Shahil Raj - 22BCE2541
- Khushi Bhatnagar - 22BCE3804


Petshop Project source (generated from the uploaded Cloud Project Report)

Files included:
- Dockerfile                : Multi-stage Dockerfile (build + runtime)
- Jenkinsfile               : Basic Jenkins pipeline (build, image push, deploy)
- Jenkinsfile_complete      : Complete pipeline example including SonarQube and checks
- deployment.yaml           : Kubernetes Deployment manifest
- service.yaml              : Kubernetes Service manifest
- k8s-manifests.yaml        : Combined deployment + service manifests

Notes:
- These files were reconstructed from the "Cloud Project Report.pdf" provided earlier.
  See the report for original snippets and context. (Report citation: turn1file0). 
- You still need the full Java source (src/, pom.xml). The report references a GitHub repo
  (https://github.com/Aj7Ay/jpetstore-6) as an example. If you want, I can try to fetch
  that repository next (with your permission).
- To build locally:
    mvn clean package
    docker build -t your-registry/petshop-app:latest .
    docker push your-registry/petshop-app:latest
    kubectl apply -f k8s-manifests.yaml

