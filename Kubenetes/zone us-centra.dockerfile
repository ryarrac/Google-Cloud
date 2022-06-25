gcloud config set compute/zone us-central1-a






cat > Dockerfile <<EOF
FROM golang:1.10
WORKDIR /go/src/app
COPY source .
RUN go install -v
ENTRYPOINT ["app","-single=true","-port=8080"]
EOF



docker build -t go-app:0.1 .


docker run -p 8080:80 --name go-app -d go-app:0.1 
docker ps
&



gcloud config list project



docker push gcr.io/[project-id]/go-app:0.1



