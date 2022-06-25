gcloud beta container --project "my-kubernetes-project-347402" clusters create "my-cluster" --zone "us-central1-c" --no-enable-basic-auth --cluster-version "1.21.6-gke.1503" --release-channel "regular" --machine-type "e2-medium" --image-type "COS_CONTAINERD" --disk-type "pd-standard" --disk-size "100" --metadata disable-legacy-endpoints=true --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --max-pods-per-node "110" --num-nodes "3" --logging=SYSTEM,WORKLOAD --monitoring=SYSTEM --enable-ip-alias --network "projects/my-kubernetes-project-347402/global/networks/default" --subnetwork "projects/my-kubernetes-project-347402/regions/us-central1/subnetworks/default" --no-enable-intra-node-visibility --default-max-pods-per-node "110" --no-enable-master-authorized-networks --addons HorizontalPodAutoscaling,HttpLoadBalancing,GcePersistentDiskCsiDriver --enable-autoupgrade --enable-autorepair --max-surge-upgrade 1 --max-unavailable-upgrade 0 --enable-shielded-nodes --node-locations "us-central1-c"


1. Once you move to gcloud shell, ensure that you have proper project setup.
   *  Check it with 
   ```sh
   gcloud config list
   ```
   * If not set, set it with
    ```sh
   gcloud set project <my-kubernetes-project-347402>
   ```

2. But to work with kubectl, you must connect it through some authentication. This is how you authenticate and connect:

```sh
gcloud container clusters get-credentials my-cluster --zone us-central1-c --project my-kubernetes-project-347402
```
It will fetch cluster endpoint and authorization data, and we are now able to use kubectl.

### Now, deploy a microservice to this cluster
To deploy a microservice, we have to create a deployment and service using kubectl.  
Usually, we create an image of a microservice and push it to dockerhub and then use it. 

Say, an image **in28min/hello-world-rest-api:0.0.1.RELEASE** is already pushed to dockerhub and we want to use that for deployment. 

```sh
kubectl create deployment hello-world-rest-api --image=in28min/hello-world-rest-api:0.0.1.RELEASE
```

Once the deployment is done, you can see the details of the deployment.
```sh
kubectl get deployment
```
<pre>
NAME                   READY   UP-TO-DATE   AVAILABLE   AGE
hello-world-rest-api   1/1     1            1           3m50s
</pre>


**Even though the deployment is ready, we can't access it from outside world, unless it is exposed. Lets expose it. To expose it we are going to use a load balancer and port 8080. 
```sh
kubectl expose deployment hello-world-rest-api --type=LoadBalancer --port=8080
```
What is happening internally, a kubernetes service is being created. It will allot an external IP through which we will be able to access the microservice. 

```sh
kubectl get services
```
<pre>
NAME                   TYPE           CLUSTER-IP     EXTERNAL-IP    PORT(S)          AGE
hello-world-rest-api   LoadBalancer   10.80.12.171   34.133.63.99   8080:32631/TCP   3m50s
kubernetes             ClusterIP      10.80.0.1      < none>         443/TCP          23h
</pre>

Sometimes, assigning the external IP address may take some time. Hence, instead of the previous command we can use the following command to watch the progress.

```sh
kubectl get services --watch
```
Once you can see the extenal IP address, you can use `Ctrl+C` to terminate the watch. 

### Check what is in the microservice

Use `curl` to fetch the webpage. First, lets check what is in the IP with the port numberaddress.

```sh
curl 34.133.63.99:8080
```
The result should be something like healthy. Now, to get the exact page under this microservice, we can use

```sh
curl 34.133.63.99:8080/hello-world
```
![deployment](img/001deployment.png)


To know the events related to your kubernetes cluster, you can use:
```sh
kubectl get events
```




### Task: Increase the number of instances of your microservices:

Say, current replicas in the kubernetes deployment is 1. We want to scale it up to 3
```sh
kubectl scale deployment hello-world-rest-api --replicas=3
```
Check it with
```sh
kubectl get deployment
```
Checking the pod details
```sh
kubectl get pods
```
If we curl, multiple times, it will show that the outputs are actually randomly coming from different pot addresses.
```sh
curl 34.133.63.99:8080/hello-world
```
Or we can simply watch the curl to see the changes
```sh
watch curl 34.133.63.99:8080/hello-world
```
![scaleup](img/002scaleup.png)



## Change the cluster (node) size

The kubernetes cluster was made up of 3 nodes, by default. We can change that manually.

```sh
gcloud container clusters resize my-cluster --node-pool default-pool --num-nodes=2 --zone=us-central1-c
```
![ClusterResize](img/003clusterresize.png)

## Autoscaling

Manual scaling is clumsy. We can apply autoscaling for both microservices and nides.

#### Autoscaing: for microservices
So, lets apply autoscaling to a maximum of 4 instances at CPU utilization percentage 70.

```sh
kubectl autoscale deployment hello-world-rest-api --max=4 --cpu-percent=70
```
This command internally creates horizontal pod autoscaling configuration. Check this HPA
```sh
kubectl get hpa
```
![pod autoscale](img/004podautoscaling.png)

### Autoscale: kubernetes cluster
After creating few pods, there will be no space remaining in your nodes. In that case, you will need to update your nodes. We can do it by autoscaling.

In many occasions, we have to specify that which database the app has to talk to. While scaling up, this configuaration must be intact. 
Say we have a database and we need to specify the connection. We can store this in kubernetes. Similarly, we can also store password in kubernetes. Once the password is stored, it will be encrypted. stored but will never be displayed. 


#### Store DB connection in kubernetes
Create a configmap 
```sh
kubectl create configmap hello-world-config --from-literal=RDS_DB_NAME=todos
```
To get the configmaps
```sh
kubectl get configmap
```
What is written in the configmap
```sh
kubectl describe configmap hello-world-config
```
![Config Map](img/005configmap.png)


#### Store a password   
Passwords are not stored as plain texts. They are encrypted and not shown as plain texts. To create and store a password, `secret` is used.

Create a password
```sh
kubectl create secret generic hello-world-secrets-1 --from-literal=RDS_PASSWORD=justapassword
```
Get the secretes
```sh
kubectl get secret
```
Describe the secret 
```sh
kubectl describe secret hello-world-secrets-1
```
Here, it is important to note that instead of revealing the password, it shows, how many bytes are occupied by the encrypted password.

![secret](img/006secret.png)