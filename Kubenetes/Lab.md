
# LAB 1: INTRODUCTION TO DOCKER
---

#### 1. Authorization and checking the project
```sh
gcloud auth list
gcloud config list project
```
#### 2. Check the difference, when docked is installed for the first time and second time
```sh
# When you install docker for the first time
# It should download hello-world and then install
docker run hello-world
docker images

# This time it will be run from local copy
docker run hello-world
```
#### 3. A docker container finishes task and stops
```sh
# Will not show hello-world
docker ps
# To see all container including those who had finished executing
docker ps -a
```
### 4. Create a Node.js dockerfile and the Javascript
##### 4.a Create a directory and move inside it
```sh
mkdir test && cd test
```
##### 4.b Creating the dockerfile
```sh

cat > Dockerfile <<EOF
# Use an official Node runtime as the parent image
FROM node:6
# Set the working directory in the container to /app
WORKDIR /app
# Copy the current directory contents into the container at /app
ADD . /app
# Make the container's port 80 available to the outside world
EXPOSE 80
# Run app.js using node when the container launches
CMD ["node", "app.js"]
EOF
```
##### 4.c Creating the app.js
```sh
cat > app.js <<EOF
const http = require('http');
const hostname = '0.0.0.0';
const port = 80;
const server = http.createServer((req, res) => {
    res.statusCode = 200;
      res.setHeader('Content-Type', 'text/plain');
        res.end('Hello World\n');
});
server.listen(port, hostname, () => {
    console.log('Server running at http://%s:%s/', hostname, port);
});
process.on('SIGINT', function() {
    console.log('Caught interrupt signal and will exit');
    process.exit();
});
EOF
```

### 5. Creating the docker image based on files 4.b and 4.c created above
```sh
# Syntax:
# docker build -t [NAME]:[TAG] <folder location>
# Here name = node-app and tag = 0.1 and folder = . [Current folder]
docker build -t node-app:0.1 .
# Checking, if the image is created properly
docker images
```
### 6. Run the application
##### 6.a This will pause the prompt in terminal
```sh
# This will pause the prompt and to check the 
# output, we can open a new terminal 
docker run -p 4000:80 --name my-app node-app:0.1
```
##### 6.b To run in the background
```sh
# -d is used for delink the app from the prompt
docker run -p 4000:80 --name my-app -d node-app:0.1
docker ps
```

### 7. Checking the logs
```sh
# Syntax:
# docker logs [container id]
# If you want to follow the logs in a running container
# docker logs -f [container id]
docker logs 51bc9d439125

```
### Create a new release of the app
##### 8.a Modify the app.js to create a new version of the app
```sh
vim app.js

# Modify the file as shown below:
const http = require('http');
const hostname = '0.0.0.0';
const port = 80;
# Modified part
const server = http.createServer((req, res) => {
    res.statusCode = 200;
      res.setHeader('Content-Type', 'text/plain');
        res.end('Welcome to Cloud\n');
});
#
server.listen(port, hostname, () => {
    console.log('Server running at http://%s:%s/', hostname, port);
});
process.on('SIGINT', function() {
    console.log('Caught interrupt signal and will exit');
    process.exit();
});

```
##### 8.b Create a new build with tag 0.2
```sh
docker build -t node-app:0.2 .
```

##### 8.c Run new docker build in a new port
```sh
docker run -p 8080:80 --name my-app-2 -d node-app:0.2
docker ps
```
##### 8.d Testing both apps running in different ports
```sh
curl http://localhost:8080
curl http://localhost:4000
```
### 9. If some internal shell to be started inside a docker
```sh
docker exec -it 90999f9005c5 bash
```
### 10. Inspect docker
```sh
# Syntx: docker inspect [container id]
docker inspect 90999f9005c5
# Extract a part from docker inspect output, say IP Address
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 90999f9005c5
```

### 11. PUBLISH THE IMAGE TO GCR
```sh
gcloud config list project
# Tag project
docker tag node-app:0.2 gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app:0.2
docker images
docker push gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app:0.2
```
### 12. Stop and remove running dockers
```sh
docker stop $(docker ps -q)
docker rm $(docker ps -aq)
docker images
```
### 13. Remove images
```sh
docker rmi node-app:0.2  gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app node-app:0.1
docker rmi node-app:0.2 gcr.io/[project-id]/node-app node-app:0.1
docker rmi node:6
docker rmi $(docker images -aq) # remove remaining images
docker images
```

### 14. PULL PUBLISHED IMAGE AND RUN
```sh
docker pull gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app:0.2
docker images
docker run -p 4000:80 -d gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app:0.2
curl http://localhost:4000/
```

# LAB2: KUBERNETES ENGINE
---

### 1. Set up compute/zone

```sh
gcloud config set compute/zone us-central1-a
```
### 2. Create cluster
```sh
gcloud container clusters create my-cluster
# my-cluster is user defined name
```
### 3. Get cluster credential
```sh
gcloud container clusters get-credentials my-cluster
```
### 4. Sample deployment of hello-app in the cluster
```sh
kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0
```
### 5. Expose the deployment through a Loadbalancer
```sh
kubectl expose deployment hello-server --type=LoadBalancer --port 8080
```
### 6. Get the service information (Kubernetes loadbalancer's IP)
```sh
kubectl get service
```
### 7. Delete the cluster
```sh
gcloud container clusters delete my-cluster
```


# LAB 3:ORCHESTRATING

### 1. Get project name
```sh
gcloud config list project
```

### 2. Set up zone
```sh
gcloud config set compute/zone us-central1-b
```
###
```sh
gcloud container clusters create io
```
###
```sh
gsutil cp -r gs://spls/gsp021/* .
```
###
```sh
cd orchestrate-with-kubernetes/kubernetes
ls
```
###
```sh
kubectl create deployment nginx --image=nginx:1.10.0
```
###
```sh
kubectl get pods
```
###
```sh
kubectl expose deployment nginx --port 80 --type LoadBalancer
```
###
```sh
kubectl get services
```
###
```sh
curl http://<External IP>:80
```
###
```sh
cat pods/monolith.yaml
```
###
```sh
kubectl create -f pods/monolith.yaml
```
###
```sh
kubectl get pods
```
###
```sh
kubectl describe pods monolith
```

<pre bash>
student_01_d68b621031ad@cloudshell:~/orchestrate-with-kubernetes/kubernetes (qwiklabs-gcp-02-65852fbb632f)$ kubectl describe pods monolith
Name:         monolith
Namespace:    default
Priority:     0
Node:         gke-io-default-pool-5fe213cc-nkrb/10.128.0.2
Start Time:   Sat, 26 Mar 2022 12:25:20 +0000
Labels:       app=monolith
Annotations:  <none>
Status:       Running
IP:           10.68.0.7
IPs:
  IP:  10.68.0.7
Containers:
  monolith:
    Container ID:  containerd://bb73bb7bfcd57795ce57d93e851b7d791969aba92e1451168cad6726ac632a91
    Image:         kelseyhightower/monolith:1.0.0
    Image ID:      sha256:980e09dd5c76f726e7369ac2c3aa9528fe3a8c92382b78e97aa54a4a32d3b187
    Ports:         80/TCP, 81/TCP
    Host Ports:    0/TCP, 0/TCP
    Args:
      -http=0.0.0.0:80
      -health=0.0.0.0:81
      -secret=secret
    State:          Running
      Started:      Sat, 26 Mar 2022 12:25:24 +0000
    Ready:          True
    Restart Count:  0
    Limits:
      cpu:     200m
      memory:  10Mi
    Requests:
      cpu:        200m
      memory:     10Mi
    Environment:  <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-nj6rj (ro)
Conditions:
  Type              Status
  Initialized       True
  Ready             True
  ContainersReady   True
  PodScheduled      True
Volumes:
  kube-api-access-nj6rj:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   Guaranteed
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason     Age   From               Message
  ----    ------     ----  ----               -------
  Normal  Scheduled  2m    default-scheduler  Successfully assigned default/monolith to gke-io-default-pool-5fe213cc-nkrb
  Normal  Pulling    118s  kubelet            Pulling image "kelseyhightower/monolith:1.0.0"
  Normal  Pulled     116s  kubelet            Successfully pulled image "kelseyhightower/monolith:1.0.0" in 1.677812247s
  Normal  Created    116s  kubelet            Created container monolith
  Normal  Started    116s  kubelet            Started container monolith
student_01_d68b621031ad@cloudshell:~/orchestrate-with-kubernetes/kubernetes (qwiklabs-gcp-02-65852fbb632f)$
</pre>
###  Interacting with Pods
```sh
kubectl port-forward monolith 10080:80
```
###
```sh
curl http://127.0.0.1:10080
```
###
```sh
curl http://127.0.0.1:10080/secure   ## Not working
```
###
```sh
curl -u user http://127.0.0.1:10080/login
```
###
```sh
TOKEN=$(curl http://127.0.0.1:10080/login -u user|jq -r '.token')
```
###
```sh
curl -H "Authorization: Bearer $TOKEN" http://127.0.0.1:10080/secure
```         
###
```sh
kubectl logs monolith
```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```         
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```         
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  
###
```sh

```  