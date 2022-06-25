gcloud auth list
gcloud config list project
docker run hello-world
docker images
docker run hello-world
docker ps
docker ps -a
mkdir test && cd test
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

docker build -t node-app:0.1 .
docker images
docker run -p 4000:80 --name my-app node-app:0.1
docker run -p 4000:80 --name my-app -d node-app:0.1
docker ps
docker logs 51bc9d439125
docker images
vim app.js
docker build -t node-app:0.2 .
docker run -p 8080:80 --name my-app-2 -d node-app:0.2
docker ps
curl http://localhost:8080
curl http://localhost:4000
docker exec -it 90999f9005c5 bash
docker inspect 90999f9005c5
docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' 90999f9005c5
gcloud config list project
docker tag node-app:0.2 gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app:0.2
docker images
docker push gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app:0.2
docker stop $(docker ps -q)
docker rm $(docker ps -aq)
docker images
docker rmi node-app:0.2  gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app node-app:0.1
docker rmi node-app:0.2 gcr.io/[project-id]/node-app node-app:0.1
docker rmi node:6
docker rmi $(docker images -aq) # remove remaining images
docker images
docker pull gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app:0.2
docker images
docker run -p 4000:80 -d gcr.io/qwiklabs-gcp-00-f916fa7833e0/node-app:0.2
curl http://localhost:4000/




# Lab2: 



gcloud auth list
gcloud config list project
gcloud config compute/zone us-central1-a
gcloud config set compute/zone us-central1-a
gcloud container clusters create my-cluster
gcloud container clusters get-credentials my-cluster
kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0
kubectl expose deployment hello-server --type=LoadBalancer --port 8080
kubectl get service
gcloud container clusters delete my-cluster




