student_01_d68b621031ad@cloudshell:~/orchestrate-with-kubernetes/kubernetes (qwiklabs-gcp-02-b1bccbfcd79e)$ history
    1  gcloud auth list
    2  gcloud config list project
    3  gcloud config set compute/zone us-central1-a
    4  gsutil -m cp -r gs://spls/gsp053/orchestrate-with-kubernetes .
    5  ls
    6  cd orchestrate-with-kubernetes/
    7  ls
    8  cd kubernetes/
    9  ls
   10  gcloud container clusters create bootcamp --num-nodes 5 --scopes "https://www.googleapis.com/auth/projecthosting,storage-rw"
   11  kubectl explain deployments
   12  kubectl explain deployments --recursive
   13  kubectl explain deployments.metadata.name
   14  ls
   15  vi deployments/auth.yaml
   16  cat deployments/auth.yaml
   17  kubectl create -f deployments/auth.yaml
   18  kubectl get deployments/
   19  kubectl get deployments
   20  kubectl get replicasets
   21  kubectl get pods
   22  kubectl create -f services/auth.yaml
   23  kubectl create -f deployments/hello.yaml
   24  cat deployments/hello.yaml
   25  cat services/hello.yaml
   26  kubectl create -f services/hello.yaml
   27  ls tls/
   28  kubectl create secret generic tls-certs --from-file tls/
   29  kubectl create configmap nginx-frontend-conf --from-file=nginx/frontend.conf
   30  kubectl create -f deployments/frontend.yaml
   31  kubectl create -f services/frontend.yaml
   32  kubectl get services
   33  kubectl get services frontend
   34  curl -ks http://35.223.22.231
   35  kubectl logs -f 35.223.22.231
   36  curl -ks https://`kubectl get svc frontend -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`
   37  kubectl get svc frontend -o=jsonpath="{.status.loadBalancer.ingress[0].ip}
   38  kubectl get svc frontend
   39  curl -ks http://35.223.22.231
   40  kubectl explain deployments
   41  kubectl explain deployment
   42  kubectl explain deployment.spec
   43  kubectl explain deployment.spec.replicas
   44  kubectl scale deployment hello --replicas=5
   45  kubectl get pods
   46  kubectl get pods| grep hello
   47  kubectl get pods| grep hello | wc -l
   48  kubectl scale deployment hello --replicas=3
   49  kubectl get pods| grep hello | wc -l
   50  kubectl edit deployment hello
   51  kubectl get replicaset
   52  kubectl rollout history deployment/hello
   53  kubectl rollout pause deployment/hello
   54  kubectl rollout history deployment/hello
   55  kubectl get pods -o jsonpath --template='{range .items[*]}{.metadata.name}{"\t"}{"\t"}{.spec.containers[0].image}{"\n"}{end}'
   56  kubectl rollout resume deployment/hello
   57  kubectl rollout status deployment/hello
   58  kubectl rollout undo deployment/hello
   59  kubectl rollout history deployment/hello
   60  kubectl get pods -o jsonpath --template='{range .items[*]}{.metadata.name}{"\t"}{"\t"}{.spec.containers[0].image}{"\n"}{end}'
   61  cat deployments/hello-canary.yaml
   62  kubectl create -f deployments/hello-canary.yaml
   63  kubectl get deployments
   64  curl -ks https://`kubectl get svc frontend -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
   65  kubectl apply -f services/hello-blue.yaml
   66  cat services/hello-blue.yaml
   67  kubectl create -f deployments/hello-green.yaml
   68  curl -ks https://`kubectl get svc frontend -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
   69  kubectl apply -f services/hello-green.yaml
   70  curl -ks https://`kubectl get svc frontend -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
   71  cat services/hello-green.yaml
   72  kubectl apply -f services/hello-blue.yaml
   73  curl -ks https://`kubectl get svc frontend -o=jsonpath="{.status.loadBalancer.ingress[0].ip}"`/version
   74  history
student_01_d68b621031ad@cloudshell:~/orchestrate-with-kubernetes/kubernetes (qwiklabs-gcp-02-b1bccbfcd79e)$