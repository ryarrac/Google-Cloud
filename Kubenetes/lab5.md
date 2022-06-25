   1  gcloud auth list
    2  gcloud config set compute/zone us-east1-d
    3  gsutil cp gs://spls/gsp051/continuous-deployment-on-kubernetes.zip .
    4  ls
    5  unzip continuous-deployment-on-kubernetes.zip
    6  ls
    7  cd continuous-deployment-on-kubernetes/
    8  ls
    9  clear
   10  ls
   11  history



   <pre>
   Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to qwiklabs-gcp-00-a9aaf8558318.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
student_01_d68b621031ad@cloudshell:~ (qwiklabs-gcp-00-a9aaf8558318)$ gcloud auth list
Credentialed Accounts

ACTIVE: *
ACCOUNT: student-01-d68b621031ad@qwiklabs.net

To set the active account, run:
    $ gcloud config set account `ACCOUNT`

student_01_d68b621031ad@cloudshell:~ (qwiklabs-gcp-00-a9aaf8558318)$ gcloud config set compute/zone us-east1-d
Updated property [compute/zone].
student_01_d68b621031ad@cloudshell:~ (qwiklabs-gcp-00-a9aaf8558318)$ gsutil cp gs://spls/gsp051/continuous-deployment-on-kubernetes.zip .
Copying gs://spls/gsp051/continuous-deployment-on-kubernetes.zip...
/ [1 files][  3.3 MiB/  3.3 MiB]
Operation completed over 1 objects/3.3 MiB.
student_01_d68b621031ad@cloudshell:~ (qwiklabs-gcp-00-a9aaf8558318)$ ls
continuous-deployment-on-kubernetes.zip  README-cloudshell.txt
student_01_d68b621031ad@cloudshell:~ (qwiklabs-gcp-00-a9aaf8558318)$ un
unalias        uncompress     unflatten      unix_chkpwd    unlink         unmkinitramfs  unpigz         unshare        unxz           unzipsfx
uname          unexpand       uniq           unix_update    unlzma         unpack200      unset          until          unzip
student_01_d68b621031ad@cloudshell:~ (qwiklabs-gcp-00-a9aaf8558318)$ un
unalias        uncompress     unflatten      unix_chkpwd    unlink         unmkinitramfs  unpigz         unshare        unxz           unzipsfx
uname          unexpand       uniq           unix_update    unlzma         unpack200      unset          until          unzip
student_01_d68b621031ad@cloudshell:~ (qwiklabs-gcp-00-a9aaf8558318)$ unzip continuous-deployment-on-kubernetes.zip
Archive:  continuous-deployment-on-kubernetes.zip
   creating: continuous-deployment-on-kubernetes/
   creating: continuous-deployment-on-kubernetes/sample-app/
  inflating: continuous-deployment-on-kubernetes/sample-app/Gopkg.toml
  inflating: continuous-deployment-on-kubernetes/sample-app/Dockerfile
   creating: continuous-deployment-on-kubernetes/sample-app/k8s/
   creating: continuous-deployment-on-kubernetes/sample-app/k8s/canary/
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/canary/frontend-canary.yaml
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/canary/backend-canary.yaml
   creating: continuous-deployment-on-kubernetes/sample-app/k8s/production/
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/production/backend-production.yaml
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/production/frontend-production.yaml
   creating: continuous-deployment-on-kubernetes/sample-app/k8s/dev/
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/dev/backend-dev.yaml
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/dev/default.yml
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/dev/frontend-dev.yaml
   creating: continuous-deployment-on-kubernetes/sample-app/k8s/services/
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/services/frontend.yaml
  inflating: continuous-deployment-on-kubernetes/sample-app/k8s/services/backend.yaml
  inflating: continuous-deployment-on-kubernetes/sample-app/html.go
  inflating: continuous-deployment-on-kubernetes/sample-app/Gopkg.lock
  inflating: continuous-deployment-on-kubernetes/sample-app/Jenkinsfile
  inflating: continuous-deployment-on-kubernetes/sample-app/main.go
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/cloud.google.com/
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/cloud.google.com/go/
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/cloud.google.com/go/LICENSE
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/cloud.google.com/go/AUTHORS
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/cloud.google.com/go/CONTRIBUTORS
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/cloud.google.com/go/compute/
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/cloud.google.com/go/compute/metadata/
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/cloud.google.com/go/compute/metadata/metadata.go
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/pre_go17.go
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/go19.go
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/pre_go19.go
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/go17.go
   creating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/ctxhttp/
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/ctxhttp/ctxhttp.go
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/ctxhttp/ctxhttp_pre17.go
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/context/context.go
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/LICENSE
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/PATENTS
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/AUTHORS
  inflating: continuous-deployment-on-kubernetes/sample-app/vendor/golang.org/x/net/CONTRIBUTORS
  inflating: continuous-deployment-on-kubernetes/sample-app/main_test.go
  inflating: continuous-deployment-on-kubernetes/LICENSE
   creating: continuous-deployment-on-kubernetes/tests/
   creating: continuous-deployment-on-kubernetes/tests/tasks/
  inflating: continuous-deployment-on-kubernetes/tests/tasks/deploy-sample-app.yaml
  inflating: continuous-deployment-on-kubernetes/tests/tasks/build-sample-app.yaml
  inflating: continuous-deployment-on-kubernetes/tests/tasks/install-jenkins.yaml
   creating: continuous-deployment-on-kubernetes/tests/pipelines/
  inflating: continuous-deployment-on-kubernetes/tests/pipelines/cd-on-k8s-prs.yaml
  inflating: continuous-deployment-on-kubernetes/tests/pipelines/cd-on-k8s-regression.yaml
   creating: continuous-deployment-on-kubernetes/tests/scripts/
  inflating: continuous-deployment-on-kubernetes/tests/scripts/deploy-sample-app.sh
  inflating: continuous-deployment-on-kubernetes/tests/scripts/install-jenkins.sh
  inflating: continuous-deployment-on-kubernetes/tests/scripts/tutorial_setup.sh
  inflating: continuous-deployment-on-kubernetes/tests/scripts/cleanup.sh
   creating: continuous-deployment-on-kubernetes/docs/
   creating: continuous-deployment-on-kubernetes/docs/img/
  inflating: continuous-deployment-on-kubernetes/docs/img/new_feature_job.png
  inflating: continuous-deployment-on-kubernetes/docs/img/master_build_executor.png
  inflating: continuous-deployment-on-kubernetes/docs/img/sample-app.png
  inflating: continuous-deployment-on-kubernetes/docs/img/approve.png
  inflating: continuous-deployment-on-kubernetes/docs/img/jenkins-login.png
  inflating: continuous-deployment-on-kubernetes/docs/img/download_file.png
  inflating: continuous-deployment-on-kubernetes/docs/img/cloud-shell-prompt.png
  inflating: continuous-deployment-on-kubernetes/docs/img/cloud-shell.png
  inflating: continuous-deployment-on-kubernetes/docs/img/info_card.png
  inflating: continuous-deployment-on-kubernetes/docs/img/blue_gceme.png
 extracting: continuous-deployment-on-kubernetes/docs/img/web-preview.png
  inflating: continuous-deployment-on-kubernetes/docs/img/git-credentials.png
  inflating: continuous-deployment-on-kubernetes/docs/img/jenkins-credentials.png
  inflating: continuous-deployment-on-kubernetes/docs/img/first-build.png
  inflating: continuous-deployment-on-kubernetes/docs/img/jenkins_sa_iam.png
  inflating: continuous-deployment-on-kubernetes/docs/img/sample_app_master_canary.png
  inflating: continuous-deployment-on-kubernetes/docs/img/jenkins.png
  inflating: continuous-deployment-on-kubernetes/docs/img/clone_url.png
  inflating: continuous-deployment-on-kubernetes/docs/img/jenkins_creds_safromkey.png
  inflating: continuous-deployment-on-kubernetes/docs/img/enable-gke.png
  inflating: continuous-deployment-on-kubernetes/docs/img/preview-8080.png
  inflating: continuous-deployment-on-kubernetes/docs/img/master_two_pipeline.png
  inflating: continuous-deployment-on-kubernetes/README.md
 extracting: continuous-deployment-on-kubernetes/.gitignore
  inflating: continuous-deployment-on-kubernetes/CONTRIBUTING.md
   creating: continuous-deployment-on-kubernetes/jenkins/
  inflating: continuous-deployment-on-kubernetes/jenkins/values.yaml
   creating: continuous-deployment-on-kubernetes/.git/
  inflating: continuous-deployment-on-kubernetes/.git/config
   creating: continuous-deployment-on-kubernetes/.git/objects/
   creating: continuous-deployment-on-kubernetes/.git/objects/03/
 extracting: continuous-deployment-on-kubernetes/.git/objects/03/2422532baf943ed8a512f6f4a4c517c3b81bbf
   creating: continuous-deployment-on-kubernetes/.git/objects/6a/
 extracting: continuous-deployment-on-kubernetes/.git/objects/6a/203528bfc88b8561d72bfcd70372d2349dbcf6
   creating: continuous-deployment-on-kubernetes/.git/objects/b5/
 extracting: continuous-deployment-on-kubernetes/.git/objects/b5/06008de1ee0db127e65bb7b7d099356d5d195b
   creating: continuous-deployment-on-kubernetes/.git/objects/d9/
 extracting: continuous-deployment-on-kubernetes/.git/objects/d9/6090487c7c881747fd76362273ae37a25aa455
   creating: continuous-deployment-on-kubernetes/.git/objects/e5/
 extracting: continuous-deployment-on-kubernetes/.git/objects/e5/a00958b5e96fd15030a9b0fd0525e9f2862250
   creating: continuous-deployment-on-kubernetes/.git/objects/f5/
 extracting: continuous-deployment-on-kubernetes/.git/objects/f5/f77a593c36986244ee2fe0a27b843a959dfbaf
   creating: continuous-deployment-on-kubernetes/.git/objects/pack/
  inflating: continuous-deployment-on-kubernetes/.git/objects/pack/pack-478b0d11cd8afe3060645aeae70ce8882a7ef712.idx
  inflating: continuous-deployment-on-kubernetes/.git/objects/pack/pack-478b0d11cd8afe3060645aeae70ce8882a7ef712.pack
   creating: continuous-deployment-on-kubernetes/.git/objects/16/
 extracting: continuous-deployment-on-kubernetes/.git/objects/16/31efbbb375b65fc03e3a86067801a7ebf3d4e8
   creating: continuous-deployment-on-kubernetes/.git/objects/4c/
 extracting: continuous-deployment-on-kubernetes/.git/objects/4c/b16af6b4a060b7cc3d04bdbccdbbb4184eb57d
   creating: continuous-deployment-on-kubernetes/.git/objects/43/
 extracting: continuous-deployment-on-kubernetes/.git/objects/43/f009883b6ee0520ba9c3649a6b9d836a179643
   creating: continuous-deployment-on-kubernetes/.git/objects/9f/
 extracting: continuous-deployment-on-kubernetes/.git/objects/9f/e0325b305bb9e521829306d02d4948dda6d306
   creating: continuous-deployment-on-kubernetes/.git/objects/00/
 extracting: continuous-deployment-on-kubernetes/.git/objects/00/77ead85a611e04757915d1c1992a929b402764
   creating: continuous-deployment-on-kubernetes/.git/objects/info/
   creating: continuous-deployment-on-kubernetes/.git/objects/37/
 extracting: continuous-deployment-on-kubernetes/.git/objects/37/fc146d6c2fe591e39b4ccef96c574dd08c6fa2
   creating: continuous-deployment-on-kubernetes/.git/objects/39/
 extracting: continuous-deployment-on-kubernetes/.git/objects/39/b6a067d38df6129d2e31cae3cf3f13a2737ea1
   creating: continuous-deployment-on-kubernetes/.git/objects/52/
 extracting: continuous-deployment-on-kubernetes/.git/objects/52/3bb807f80f954bc5d02ad2eb2534336bcb2025
   creating: continuous-deployment-on-kubernetes/.git/objects/55/
 extracting: continuous-deployment-on-kubernetes/.git/objects/55/90105984de334570897ca26d8236e16b45c688
   creating: continuous-deployment-on-kubernetes/.git/objects/0f/
 extracting: continuous-deployment-on-kubernetes/.git/objects/0f/abbf295d9e64c959b103e05d1d98fb20d5756c
   creating: continuous-deployment-on-kubernetes/.git/objects/d4/
 extracting: continuous-deployment-on-kubernetes/.git/objects/d4/03996ba1f3f9781f063665de0d1f515a51faea
   creating: continuous-deployment-on-kubernetes/.git/objects/a6/
 extracting: continuous-deployment-on-kubernetes/.git/objects/a6/1b8e0ec954c852298bcbcc1861a130b29c442b
   creating: continuous-deployment-on-kubernetes/.git/objects/e0/
 extracting: continuous-deployment-on-kubernetes/.git/objects/e0/935af9300f5300b5542b2bb25e79712149a33d
   creating: continuous-deployment-on-kubernetes/.git/objects/2d/
 extracting: continuous-deployment-on-kubernetes/.git/objects/2d/266b6ee3b11dcfce2c54ec6a6949276c3882d3
   creating: continuous-deployment-on-kubernetes/.git/objects/77/
 extracting: continuous-deployment-on-kubernetes/.git/objects/77/fcbc0a7ed334d2f49841ca7c72f8c07ea2fa5c
   creating: continuous-deployment-on-kubernetes/.git/objects/1e/
 extracting: continuous-deployment-on-kubernetes/.git/objects/1e/7feaf56eb88533c8a42c58af8bf25225cbb2eb
   creating: continuous-deployment-on-kubernetes/.git/objects/23/
 extracting: continuous-deployment-on-kubernetes/.git/objects/23/08e9138ca42cff23d1ff74d22e5774e9751d35
 extracting: continuous-deployment-on-kubernetes/.git/HEAD
   creating: continuous-deployment-on-kubernetes/.git/info/
  inflating: continuous-deployment-on-kubernetes/.git/info/exclude
   creating: continuous-deployment-on-kubernetes/.git/logs/
  inflating: continuous-deployment-on-kubernetes/.git/logs/HEAD
   creating: continuous-deployment-on-kubernetes/.git/logs/refs/
   creating: continuous-deployment-on-kubernetes/.git/logs/refs/heads/
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/heads/master
   creating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/
   creating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/origin/
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/origin/HEAD
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/origin/master
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/origin/patch-1
   creating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/v1
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/jenkins-2.67
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/region-tags-yaml
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/link-to-cgc
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/docker-image-readme
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/update-pipeline-plugin
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/enable-agent
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/link-typo
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/increase-agent-resources
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/add-tests
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/revert-177-master
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/v2
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/update-to-jenkins-2
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/test-pr-check
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/dm-templates
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/master
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/test-pr-check-2
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/e2e-test
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/test-branch
  inflating: continuous-deployment-on-kubernetes/.git/logs/refs/remotes/upstream/helm
  inflating: continuous-deployment-on-kubernetes/.git/description
   creating: continuous-deployment-on-kubernetes/.git/hooks/
  inflating: continuous-deployment-on-kubernetes/.git/hooks/commit-msg.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/pre-rebase.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/pre-commit.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/applypatch-msg.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/fsmonitor-watchman.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/pre-receive.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/prepare-commit-msg.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/post-update.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/pre-merge-commit.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/pre-applypatch.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/pre-push.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/update.sample
  inflating: continuous-deployment-on-kubernetes/.git/hooks/push-to-checkout.sample
   creating: continuous-deployment-on-kubernetes/.git/refs/
   creating: continuous-deployment-on-kubernetes/.git/refs/heads/
  inflating: continuous-deployment-on-kubernetes/.git/refs/heads/master
   creating: continuous-deployment-on-kubernetes/.git/refs/tags/
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ ls
CONTRIBUTING.md  docs  jenkins  LICENSE  README.md  sample-app  tests
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ history
    1  gcloud auth list
    2  gcloud config set compute/zone us-east1-d
    3  gsutil cp gs://spls/gsp051/continuous-deployment-on-kubernetes.zip .
    4  ls
    5  unzip continuous-deployment-on-kubernetes.zip
    6  ls
    7  cd continuous-deployment-on-kubernetes/
    8  ls
    9  clear
   10  ls
   11  history
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ ^C
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ ls
CONTRIBUTING.md  docs  jenkins  LICENSE  README.md  sample-app  tests
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ ls
CONTRIBUTING.md  docs  jenkins  LICENSE  README.md  sample-app  tests
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ gcloud container clusters create jenkins-cd --num-nodes 2 --machine-type n1-standard-2 --scopes "https://www.googleapis.com/auth/source.read_write,cloud-platform"
Default change: VPC-native is the default mode during cluster creation for versions greater than 1.21.0-gke.1500. To create advanced routes based clusters, please pass the `--no-enable-ip-alias` flag
Note: Your Pod address range (`--cluster-ipv4-cidr`) can accommodate at most 1008 node(s).
Creating cluster jenkins-cd in us-east1-d... Cluster is being health-checked (master is healthy)...done.     
Created [https://container.googleapis.com/v1/projects/qwiklabs-gcp-00-a9aaf8558318/zones/us-east1-d/clusters/jenkins-cd].
To inspect the contents of your cluster, go to: https://console.cloud.google.com/kubernetes/workload_/gcloud/us-east1-d/jenkins-cd?project=qwiklabs-gcp-00-a9aaf8558318
kubeconfig entry generated for jenkins-cd.
NAME: jenkins-cd
LOCATION: us-east1-d
MASTER_VERSION: 1.21.9-gke.1002
MASTER_IP: 35.196.24.183
MACHINE_TYPE: n1-standard-2
NODE_VERSION: 1.21.9-gke.1002
NUM_NODES: 2
STATUS: RUNNING
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ gcloud container clusters list
NAME: jenkins-cd
LOCATION: us-east1-d
MASTER_VERSION: 1.21.9-gke.1002
MASTER_IP: 35.196.24.183
MACHINE_TYPE: n1-standard-2
NODE_VERSION: 1.21.9-gke.1002
NUM_NODES: 2
STATUS: RUNNING
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ gcloud container clusters get-credentials jenkins-cd
Fetching cluster endpoint and auth data.
kubeconfig entry generated for jenkins-cd.
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ kubectl  clusters info
error: unknown command "clusters" for "kubectl"
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ kubectl  cluster-info
Kubernetes control plane is running at https://35.196.24.183
GLBCDefaultBackend is running at https://35.196.24.183/api/v1/namespaces/kube-system/services/default-http-backend:http/proxy
KubeDNS is running at https://35.196.24.183/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://35.196.24.183/api/v1/namespaces/kube-system/services/https:metrics-server:/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ helm repo add jenkins https://charts.jenkins.io
"jenkins" has been added to your repositories
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ helm repo update
Hang tight while we grab the latest from your chart repositories...
...Successfully got an update from the "jenkins" chart repository
Update Complete. ⎈Happy Helming!⎈
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ ls
CONTRIBUTING.md  docs  jenkins  LICENSE  README.md  sample-app  tests
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ cd jenkins/
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes/jenkins (qwiklabs-gcp-00-a9aaf8558318)$ ls
values.yaml
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes/jenkins (qwiklabs-gcp-00-a9aaf8558318)$ cat values.yaml
controller:
  installPlugins:
    - kubernetes:latest
    - workflow-job:latest
    - workflow-aggregator:latest
    - credentials-binding:latest
    - git:latest
    - google-oauth-plugin:latest
    - google-source-plugin:latest
    - google-kubernetes-engine:latest
    - google-storage-plugin:latest
  resources:
    requests:
      cpu: "50m"
      memory: "1024Mi"
    limits:
      cpu: "1"
      memory: "3500Mi"
  javaOpts: "-Xms3500m -Xmx3500m"
  serviceType: ClusterIP
agent:
  resources:
    requests:
      cpu: "500m"
      memory: "256Mi"
    limits:
      cpu: "1"
      memory: "512Mi"
persistence:
  size: 100Gi
serviceAccount:
  name: cd-jenkins
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes/jenkins (qwiklabs-gcp-00-a9aaf8558318)$ cd ..
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ gsutil cp gs://spls/gsp330/values.yaml jenkins/
CONTRIBUTING.md   docs/             .git/             .gitignore        jenkins/          LICENSE           README.md         sample-app/       tests/
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ gsutil cp gs://spls/gsp330/values.yaml jenkins/values.yaml
Copying gs://spls/gsp330/values.yaml...
/ [1 files][ 35.0 KiB/ 35.0 KiB]
Operation completed over 1 objects/35.0 KiB.
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$ cat jenkins/values.yaml
# Default values for jenkins.
# This is a YAML-formatted file.
# Declare name/value pairs to be passed into your templates.
# name: value

## Overrides for generated resource names
# See templates/_helpers.tpl
# nameOverride:
# fullnameOverride:
# namespaceOverride:

# For FQDN resolving of the controller service. Change this value to match your existing configuration.
# ref: https://github.com/kubernetes/dns/blob/master/docs/specification.md
clusterZone: "cluster.local"

renderHelmLabels: true

controller:
  # Used for label app.kubernetes.io/component
  componentName: "jenkins-controller"
  image: "jenkins/jenkins"
  tag: "2.289.1-jdk11"
  imagePullPolicy: "Always"
  imagePullSecretName:
  # Optionally configure lifetime for controller-container
  lifecycle:
  #  postStart:
  #    exec:
  #      command:
  #      - "uname"
  #      - "-a"
  disableRememberMe: false
  numExecutors: 0
  # configures the executor mode of the Jenkins node. Possible values are: NORMAL or EXCLUSIVE
  executorMode: "NORMAL"
  # This is ignored if enableRawHtmlMarkupFormatter is true
  markupFormatter: plainText
  customJenkinsLabels: []
  # The default configuration uses this secret to configure an admin user
  # If you don't need that user or use a different security realm then you can disable it
  adminSecret: true

  hostNetworking: false
  # When enabling LDAP or another non-Jenkins identity source, the built-in admin account will no longer exist.
  # If you disable the non-Jenkins identity store and instead use the Jenkins internal one,
  # you should revert controller.adminUser to your preferred admin user:
  adminUser: "admin"
  # adminPassword: <defaults to random>
  admin:
    existingSecret: ""
    userKey: jenkins-admin-user
    passwordKey: jenkins-admin-password
  # This values should not be changed unless you use your custom image of jenkins or any devired from. If you want to use
  # Cloudbees Jenkins Distribution docker, you should set jenkinsHome: "/var/cloudbees-jenkins-distribution"
  jenkinsHome: "/var/jenkins_home"
  # This values should not be changed unless you use your custom image of jenkins or any devired from. If you want to use
  # Cloudbees Jenkins Distribution docker, you should set jenkinsRef: "/usr/share/cloudbees-jenkins-distribution/ref"
  jenkinsRef: "/usr/share/jenkins/ref"
  # Path to the jenkins war file which is used by jenkins-plugin-cli.
  jenkinsWar: "/usr/share/jenkins/jenkins.war"
  # Overrides the default arguments passed to the war
  # overrideArgs:
  #   - --httpPort=8080
  resources:
    requests:
      cpu: "50m"
      memory: "256Mi"
    limits:
      cpu: "2000m"
      memory: "4096Mi"
  # Environment variables that get added to the init container (useful for e.g. http_proxy)
  # initContainerEnv:
  #   - name: http_proxy
  #     value: "http://192.168.64.1:3128"
  # containerEnv:
  #   - name: http_proxy
  #     value: "http://192.168.64.1:3128"
  # Set min/max heap here if needed with:
  # javaOpts: "-Xms512m -Xmx512m"
  # jenkinsOpts: ""
  # If you are using the ingress definitions provided by this chart via the `controller.ingress` block the configured hostname will be the ingress hostname starting with `https://` or `http://` depending on the `tls` configuration.
  # The Protocol can be overwritten by specifying `controller.jenkinsUrlProtocol`.
  # jenkinsUrlProtocol: "https"
  # If you are not using the provided ingress you can specify `controller.jenkinsUrl` to change the url definition.
  # jenkinsUrl: ""
  # If you set this prefix and use ingress controller then you might want to set the ingress path below
  # jenkinsUriPrefix: "/jenkins"
  # Enable pod security context (must be `true` if podSecurityContextOverride, runAsUser or fsGroup are set)
  usePodSecurityContext: true
  # Note that `runAsUser`, `fsGroup`, and `securityContextCapabilities` are
  # being deprecated and replaced by `podSecurityContextOverride`.
  # Set runAsUser to 1000 to let Jenkins run as non-root user 'jenkins' which exists in 'jenkins/jenkins' docker image.
  # When setting runAsUser to a different value than 0 also set fsGroup to the same value:
  runAsUser: 1000
  fsGroup: 1000
  # If you have PodSecurityPolicies that require dropping of capabilities as suggested by CIS K8s benchmark, put them here
  securityContextCapabilities: {}
  #  drop:
  #    - NET_RAW
  # Completely overwrites the contents of the `securityContext`, ignoring the
  # values provided for the deprecated fields: `runAsUser`, `fsGroup`, and
  # `securityContextCapabilities`.  In the case of mounting an ext4 filesystem,
  # it might be desirable to use `supplementalGroups` instead of `fsGroup` in
  # the `securityContext` block: https://github.com/kubernetes/kubernetes/issues/67014#issuecomment-589915496
  # podSecurityContextOverride:
  #   runAsUser: 1000
  #   runAsNonRoot: true
  #   supplementalGroups: [1000]
  #   # capabilities: {}
  servicePort: 8080
  targetPort: 8080
  # For minikube, set this to NodePort, elsewhere use LoadBalancer
  # Use ClusterIP if your setup includes ingress controller
  serviceType: ClusterIP
  # Jenkins controller service annotations
  serviceAnnotations: {}
  # Jenkins controller custom labels
  statefulSetLabels: {}
  #   foo: bar
  #   bar: foo
  # Jenkins controller service labels
  serviceLabels: {}
  #   service.beta.kubernetes.io/aws-load-balancer-backend-protocol: https
  # Put labels on Jenkins controller pod
  podLabels: {}
  # Used to create Ingress record (should used with ServiceType: ClusterIP)
  # nodePort: <to set explicitly, choose port between 30000-32767
  # Enable Kubernetes Liveness and Readiness Probes
  # if Startup Probe is supported, enable it too
  # ~ 2 minutes to allow Jenkins to restart when upgrading plugins. Set ReadinessTimeout to be shorter than LivenessTimeout.
  healthProbes: true
  probes:
    startupProbe:
      httpGet:
        path: '{{ default "" .Values.controller.jenkinsUriPrefix }}/login'
        port: http
      periodSeconds: 10
      timeoutSeconds: 5
      failureThreshold: 12
    livenessProbe:
      failureThreshold: 5
      httpGet:
        path: '{{ default "" .Values.controller.jenkinsUriPrefix }}/login'
        port: http
      periodSeconds: 10
      timeoutSeconds: 5
      # If Startup Probe is not supported on your Kubernetes cluster, you might want to use "initialDelaySeconds" instead.
      # It delays the initial liveness probe while Jenkins is starting
      # initialDelaySeconds: 60
    readinessProbe:
      failureThreshold: 3
      httpGet:
        path: '{{ default "" .Values.controller.jenkinsUriPrefix }}/login'
        port: http
      periodSeconds: 10
      timeoutSeconds: 5
      # If Startup Probe is not supported on your Kubernetes cluster, you might want to use "initialDelaySeconds" instead.
      # It delays the initial readyness probe while Jenkins is starting
      # initialDelaySeconds: 60

  agentListenerEnabled: true
  agentListenerPort: 50000
  agentListenerHostPort:
  agentListenerNodePort:
  disabledAgentProtocols:
    - JNLP-connect
    - JNLP2-connect
  csrf:
    defaultCrumbIssuer:
      enabled: true
      proxyCompatability: true
  # Kubernetes service type for the JNLP agent service
  # agentListenerServiceType is the Kubernetes Service type for the JNLP agent service,
  # either 'LoadBalancer', 'NodePort', or 'ClusterIP'
  # Note if you set this to 'LoadBalancer', you *must* define annotations to secure it. By default
  # this will be an external load balancer and allowing inbound 0.0.0.0/0, a HUGE
  # security risk:  https://github.com/kubernetes/charts/issues/1341
  agentListenerServiceType: "ClusterIP"
  # Optionally assign an IP to the LoadBalancer agentListenerService LoadBalancer
  # GKE users: only regional static IPs will work for Service Load balancer.
  agentListenerLoadBalancerIP:
  agentListenerServiceAnnotations: {}

  # Example of 'LoadBalancer' type of agent listener with annotations securing it
  # agentListenerServiceType: LoadBalancer
  # agentListenerServiceAnnotations:
  #   service.beta.kubernetes.io/aws-load-balancer-internal: "True"
  #   service.beta.kubernetes.io/load-balancer-source-ranges: "172.0.0.0/8, 10.0.0.0/8"

  # LoadBalancerSourcesRange is a list of allowed CIDR values, which are combined with ServicePort to
  # set allowed inbound rules on the security group assigned to the controller load balancer
  loadBalancerSourceRanges:
  - 0.0.0.0/0
  # Optionally assign a known public LB IP
  # loadBalancerIP: 1.2.3.4
  # Optionally configure a JMX port
  # requires additional javaOpts, ie
  # javaOpts: >
  #   -Dcom.sun.management.jmxremote.port=4000
  #   -Dcom.sun.management.jmxremote.authenticate=false
  #   -Dcom.sun.management.jmxremote.ssl=false
  # jmxPort: 4000
  # Optionally configure other ports to expose in the controller container
  extraPorts: []
  # - name: BuildInfoProxy
  #   port: 9000

  # List of plugins to be install during Jenkins controller start
  installPlugins:
    - kubernetes:1.29.4
    - workflow-multibranch:latest
    - workflow-aggregator:latest
    - pipeline-model-definition:latest
    - pipeline-model-extensions:latest
    - git:4.7.1
    - configuration-as-code:1.51
    - google-oauth-plugin:latest
    - google-source-plugin:latest
    - google-kubernetes-engine:latest
    - google-storage-plugin:latest
  resources:

  # Set to false to download the minimum required version of all dependencies.
  installLatestPlugins: false

  # List of plugins to install in addition to those listed in controller.installPlugins
  additionalPlugins: []

  # Enable to initialize the Jenkins controller only once on initial installation.
  # Without this, whenever the controller gets restarted (Evicted, etc.) it will fetch plugin updates which has the potential to cause breakage.
  # Note that for this to work, `persistence.enabled` needs to be set to `true`
  initializeOnce: false

  # Enable to always override the installed plugins with the values of 'controller.installPlugins' on upgrade or redeployment.
  # overwritePlugins: true

  # Configures if plugins bundled with `controller.image` should be overwritten with the values of 'controller.installPlugins' on upgrade or redeployment.
  overwritePluginsFromImage: true

  # Enable HTML parsing using OWASP Markup Formatter Plugin (antisamy-markup-formatter), useful with ghprb plugin.
  # The plugin is not installed by default, please update controller.installPlugins.
  enableRawHtmlMarkupFormatter: false
  # Used to approve a list of groovy functions in pipelines used the script-security plugin. Can be viewed under /scriptApproval
  scriptApproval: []
  #  - "method groovy.json.JsonSlurperClassic parseText java.lang.String"
  #  - "new groovy.json.JsonSlurperClassic"
  # List of groovy init scripts to be executed during Jenkins controller start
  initScripts: []
  #  - |
  #    print 'adding global pipeline libraries, register properties, bootstrap jobs...'

  # 'name' is a name of an existing secret in same namespace as jenkins,
  # 'keyName' is the name of one of the keys inside current secret.
  # the 'name' and 'keyName' are concatenated with a '-' in between, so for example:
  # an existing secret "secret-credentials" and a key inside it named "github-password" should be used in Jcasc as ${secret-credentials-github-password}
  # 'name' and 'keyName' must be lowercase RFC 1123 label must consist of lower case alphanumeric characters or '-',
  # and must start and end with an alphanumeric character (e.g. 'my-name',  or '123-abc')
  additionalExistingSecrets: []
  #  - name: secret-name-1
  #    keyName: username
  #  - name: secret-name-1
  #    keyName: password

  additionalSecrets: []
  #  - name: nameOfSecret
  #    value: secretText

  # Generate SecretClaim resources in order to create Kubernetes secrets from HashiCorp Vault using kube-vault-controller.
  # 'name' is name of the secret that will be created in Kubernetes. The Jenkins fullname is prepended to this value.
  # 'path' is the fully qualified path to the secret in Vault
  # 'type' is an optional Kubernetes secret type. Defaults to 'Opaque'
  # 'renew' is an optional secret renewal time in seconds
  secretClaims: []
  # - name: secretName        # required
  #   path: testPath          # required
  #   type: kubernetes.io/tls # optional
  #   renew: 60               # optional

  # Name of default cloud configuration.
  cloudName: "kubernetes"

  # Below is the implementation of Jenkins Configuration as Code.  Add a key under configScripts for each configuration area,
  # where each corresponds to a plugin or section of the UI.  Each key (prior to | character) is just a label, and can be any value.
  # Keys are only used to give the section a meaningful name.  The only restriction is they may only contain RFC 1123 \ DNS label
  # characters: lowercase letters, numbers, and hyphens.  The keys become the name of a configuration yaml file on the controller in
  # /var/jenkins_home/casc_configs (by default) and will be processed by the Configuration as Code Plugin.  The lines after each |
  # become the content of the configuration yaml file.  The first line after this is a JCasC root element, eg jenkins, credentials,
  # etc.  Best reference is https://<jenkins_url>/configuration-as-code/reference.  The example below creates a welcome message:
  JCasC:
    defaultConfig: true
    configScripts: {}
    #  welcome-message: |
    #    jenkins:
    #      systemMessage: Welcome to our CI\CD server.  This Jenkins is configured and managed 'as code'.
    # Ignored if securityRealm is defined in controller.JCasC.configScripts and
    # ignored if controller.enableXmlConfig=true as controller.securityRealm takes precedence
    securityRealm: |-
      local:
        allowsSignup: false
        enableCaptcha: false
        users:
        - id: "${chart-admin-username}"
          name: "Jenkins Admin"
          password: "${chart-admin-password}"
    # Ignored if authorizationStrategy is defined in controller.JCasC.configScripts
    authorizationStrategy: |-
      loggedInUsersCanDoAnything:
        allowAnonymousRead: false
  # Optionally specify additional init-containers
  customInitContainers: []
  # - name: custom-init
  #   image: "alpine:3.7"
  #   imagePullPolicy: Always
  #   command: [ "uname", "-a" ]

  sidecars:
    configAutoReload:
      # If enabled: true, Jenkins Configuration as Code will be reloaded on-the-fly without a reboot.  If false or not-specified,
      # jcasc changes will cause a reboot and will only be applied at the subsequent start-up.  Auto-reload uses the
      # http://<jenkins_url>/reload-configuration-as-code endpoint to reapply config when changes to the configScripts are detected.
      enabled: true
      image: kiwigrid/k8s-sidecar:1.12.2
      imagePullPolicy: IfNotPresent
      resources: {}
        #   limits:
        #     cpu: 100m
        #     memory: 100Mi
        #   requests:
        #     cpu: 50m
        #     memory: 50Mi
      # How many connection-related errors to retry on
      reqRetryConnect: 10
      # env:
      #   - name: REQ_TIMEOUT
      #     value: "30"
      # SSH port value can be set to any unused TCP port.  The default, 1044, is a non-standard SSH port that has been chosen at random.
      # Is only used to reload jcasc config from the sidecar container running in the Jenkins controller pod.
      # This TCP port will not be open in the pod (unless you specifically configure this), so Jenkins will not be
      # accessible via SSH from outside of the pod.  Note if you use non-root pod privileges (runAsUser & fsGroup),
      # this must be > 1024:
      sshTcpPort: 1044
      # folder in the pod that should hold the collected dashboards:
      folder: "/var/jenkins_home/casc_configs"
      # If specified, the sidecar will search for JCasC config-maps inside this namespace.
      # Otherwise the namespace in which the sidecar is running will be used.
      # It's also possible to specify ALL to search in all namespaces:
      # searchNamespace:

    # Allows you to inject additional/other sidecars
    other: []
    ## The example below runs the client for https://smee.io as sidecar container next to Jenkins,
    ## that allows to trigger build behind a secure firewall.
    ## https://jenkins.io/blog/2019/01/07/webhook-firewalls/#triggering-builds-with-webhooks-behind-a-secure-firewall
    ##
    ## Note: To use it you should go to https://smee.io/new and update the url to the generete one.
    # - name: smee
    #   image: docker.io/twalter/smee-client:1.0.2
    #   args: ["--port", "{{ .Values.controller.servicePort }}", "--path", "/github-webhook/", "--url", "https://smee.io/new"]
    #   resources:
    #     limits:
    #       cpu: 50m
    #       memory: 128Mi
    #     requests:
    #       cpu: 10m
    #       memory: 32Mi
  # Name of the Kubernetes scheduler to use
  schedulerName: ""
  # Node labels and tolerations for pod assignment
  # ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#nodeselector
  # ref: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/#taints-and-tolerations-beta-feature
  nodeSelector: {}

  terminationGracePeriodSeconds:

  tolerations: []

  affinity: {}
  # Leverage a priorityClass to ensure your pods survive resource shortages
  # ref: https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/
  priorityClassName:

  podAnnotations: {}
  # Add StatefulSet annotations
  statefulSetAnnotations: {}

  # StatefulSet updateStrategy
  # ref: https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/#update-strategies
  updateStrategy: {}

  ingress:
    enabled: false
    # Override for the default paths that map requests to the backend
    paths: []
    # - backend:
    #     serviceName: ssl-redirect
    #     servicePort: use-annotation
    # - backend:
    #     serviceName: >-
    #       {{ template "jenkins.fullname" . }}
    #     # Don't use string here, use only integer value!
    #     servicePort: 8080
    # For Kubernetes v1.14+, use 'networking.k8s.io/v1beta1'
    # For Kubernetes v1.19+, use 'networking.k8s.io/v1'
    apiVersion: "extensions/v1beta1"
    labels: {}
    annotations: {}
    # kubernetes.io/ingress.class: nginx
    # kubernetes.io/tls-acme: "true"
    # For Kubernetes >= 1.18 you should specify the ingress-controller via the field ingressClassName
    # See https://kubernetes.io/blog/2020/04/02/improvements-to-the-ingress-api-in-kubernetes-1.18/#specifying-the-class-of-an-ingress
    # ingressClassName: nginx
    # Set this path to jenkinsUriPrefix above or use annotations to rewrite path
    # path: "/jenkins"
    # configures the hostname e.g. jenkins.example.com
    hostName:
    tls:
    # - secretName: jenkins.cluster.local
    #   hosts:
    #     - jenkins.cluster.local

  # often you want to have your controller all locked down and private
  # but you still want to get webhooks from your SCM
  # A secondary ingress will let you expose different urls
  # with a differnt configuration
  secondaryingress:
    enabled: false
    # paths you want forwarded to the backend
    # ex /github-webhook
    paths: []
    # For Kubernetes v1.14+, use 'networking.k8s.io/v1beta1'
    # For Kubernetes v1.19+, use 'networking.k8s.io/v1'
    apiVersion: "extensions/v1beta1"
    labels: {}
    annotations: {}
    # kubernetes.io/ingress.class: nginx
    # kubernetes.io/tls-acme: "true"
    # For Kubernetes >= 1.18 you should specify the ingress-controller via the field ingressClassName
    # See https://kubernetes.io/blog/2020/04/02/improvements-to-the-ingress-api-in-kubernetes-1.18/#specifying-the-class-of-an-ingress
    # ingressClassName: nginx
    # configures the hostname e.g. jenkins-external.example.com
    hostName:
    tls:
    # - secretName: jenkins-external.example.com
    #   hosts:
    #     - jenkins-external.example.com

  # If you're running on GKE and need to configure a backendconfig
  # to finish ingress setup, use the following values.
  # Docs: https://cloud.google.com/kubernetes-engine/docs/concepts/backendconfig
  backendconfig:
    enabled: false
    apiVersion: "extensions/v1beta1"
    name:
    labels: {}
    annotations: {}
    spec: {}

  # Openshift route
  route:
    enabled: false
    labels: {}
    annotations: {}
    # path: "/jenkins"

  # controller.hostAliases allows for adding entries to Pod /etc/hosts:
  # https://kubernetes.io/docs/concepts/services-networking/add-entries-to-pod-etc-hosts-with-host-aliases/
  hostAliases: []
  # - ip: 192.168.50.50
  #   hostnames:
  #     - something.local
  # - ip: 10.0.50.50
  #   hostnames:
  #     - other.local

  # Expose Prometheus metrics
  prometheus:
    # If enabled, add the prometheus plugin to the list of plugins to install
    # https://plugins.jenkins.io/prometheus
    enabled: false
    # Additional labels to add to the ServiceMonitor object
    serviceMonitorAdditionalLabels: {}
    # Set a custom namespace where to deploy ServiceMonitor resource
    # serviceMonitorNamespace: monitoring
    scrapeInterval: 60s
    # This is the default endpoint used by the prometheus plugin
    scrapeEndpoint: /prometheus
    # Additional labels to add to the PrometheusRule object
    alertingRulesAdditionalLabels: {}
    # An array of prometheus alerting rules
    # See here: https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/
    # The `groups` root object is added by default, simply add the rule entries
    alertingrules: []
    # Set a custom namespace where to deploy PrometheusRule resource
    prometheusRuleNamespace: ""

  # Can be used to disable rendering controller test resources when using helm template
  testEnabled: true

  httpsKeyStore:
    jenkinsHttpsJksSecretName: ''
    enable: false
    httpPort: 8081
    path: "/var/jenkins_keystore"
    fileName: "keystore.jks"
    password: "password"
    # Convert keystore.jks files content to base64 ( cat keystore.jks | base64 ) and put the output here
    jenkinsKeyStoreBase64Encoded: |
        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

agent:
  enabled: true
  defaultsProviderTemplate: ""
  # URL for connecting to the Jenkins contoller
  jenkinsUrl:
  # connect to the specified host and port, instead of connecting directly to the Jenkins controller
  jenkinsTunnel:
  kubernetesConnectTimeout: 5
  kubernetesReadTimeout: 15
  maxRequestsPerHostStr: "32"
  namespace:
  image: "jenkins/inbound-agent"
  tag: "4.6-1"
  workingDir: "/home/jenkins"
  customJenkinsLabels: []
  # name of the secret to be used for image pulling
  imagePullSecretName:
  componentName: "jenkins-agent"
  websocket: false
  privileged: false
  runAsUser:
  runAsGroup:
  resources:
    requests:
      cpu: "512m"
      memory: "512Mi"
    limits:
      cpu: "512m"
      memory: "512Mi"
  # You may want to change this to true while testing a new image
  alwaysPullImage: false
  # Controls how agent pods are retained after the Jenkins build completes
  # Possible values: Always, Never, OnFailure
  podRetention: "Never"
  # Disable if you do not want the Yaml the agent pod template to show up
  # in the job Console Output. This can be helpful for either security reasons
  # or simply to clean up the output to make it easier to read.
  showRawYaml: true
  # You can define the volumes that you want to mount for this container
  # Allowed types are: ConfigMap, EmptyDir, HostPath, Nfs, PVC, Secret
  # Configure the attributes as they appear in the corresponding Java class for that type
  # https://github.com/jenkinsci/kubernetes-plugin/tree/master/src/main/java/org/csanchez/jenkins/plugins/kubernetes/volumes
  volumes: []
  # - type: ConfigMap
  #   configMapName: myconfigmap
  #   mountPath: /var/myapp/myconfigmap
  # - type: EmptyDir
  #   mountPath: /var/myapp/myemptydir
  #   memory: false
  # - type: HostPath
  #   hostPath: /var/lib/containers
  #   mountPath: /var/myapp/myhostpath
  # - type: Nfs
  #   mountPath: /var/myapp/mynfs
  #   readOnly: false
  #   serverAddress: "192.0.2.0"
  #   serverPath: /var/lib/containers
  # - type: PVC
  #   claimName: mypvc
  #   mountPath: /var/myapp/mypvc
  #   readOnly: false
  # - type: Secret
  #   defaultMode: "600"
  #   mountPath: /var/myapp/mysecret
  #   secretName: mysecret
  # Pod-wide environment, these vars are visible to any container in the agent pod

  # You can define the workspaceVolume that you want to mount for this container
  # Allowed types are: DynamicPVC, EmptyDir, HostPath, Nfs, PVC
  # Configure the attributes as they appear in the corresponding Java class for that type
  # https://github.com/jenkinsci/kubernetes-plugin/tree/master/src/main/java/org/csanchez/jenkins/plugins/kubernetes/volumes/workspace
  workspaceVolume: {}
  # - type: DynamicPVC
  #   configMapName: myconfigmap
  # - type: EmptyDir
  #   memory: false
  # - type: HostPath
  #   hostPath: /var/lib/containers
  # - type: Nfs
  #   readOnly: false
  #   serverAddress: "192.0.2.0"
  #   serverPath: /var/lib/containers
  # - type: PVC
  #   claimName: mypvc
  #   readOnly: false
  # Pod-wide environment, these vars are visible to any container in the agent pod
  envVars: []
  # - name: PATH
  #   value: /usr/local/bin
  nodeSelector: {}
  # Key Value selectors. Ex:
  # jenkins-agent: v1

  # Executed command when side container gets started
  command:
  args: "${computer.jnlpmac} ${computer.name}"
  # Side container name
  sideContainerName: "jnlp"
  # Doesn't allocate pseudo TTY by default
  TTYEnabled: false
  # Max number of spawned agent
  containerCap: 10
  # Pod name
  podName: "default"
  # Allows the Pod to remain active for reuse until the configured number of
  # minutes has passed since the last step was executed on it.
  idleMinutes: 0
  # Raw yaml template for the Pod. For example this allows usage of toleration for agent pods.
  # https://github.com/jenkinsci/kubernetes-plugin#using-yaml-to-define-pod-templates
  # https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  yamlTemplate: ""
  # yamlTemplate: |-
  #   apiVersion: v1
  #   kind: Pod
  #   spec:
  #     tolerations:
  #     - key: "key"
  #       operator: "Equal"
  #       value: "value"
  # Defines how the raw yaml field gets merged with yaml definitions from inherited pod templates: merge or override
  yamlMergeStrategy: "override"
  # Timeout in seconds for an agent to be online
  connectTimeout: 100
  # Annotations to apply to the pod.
  annotations: {}

  # Below is the implementation of custom pod templates for the default configured kubernetes cloud.
  # Add a key under podTemplates for each pod template. Each key (prior to | character) is just a label, and can be any value.
  # Keys are only used to give the pod template a meaningful name.  The only restriction is they may only contain RFC 1123 \ DNS label
  # characters: lowercase letters, numbers, and hyphens. Each pod template can contain multiple containers.
  # For this pod templates configuration to be loaded the following values must be set:
  # controller.JCasC.defaultConfig: true
  # Best reference is https://<jenkins_url>/configuration-as-code/reference#Cloud-kubernetes. The example below creates a python pod template.
  podTemplates: {}
  #  python: |
  #    - name: python
  #      label: jenkins-python
  #      serviceAccount: jenkins
  #      containers:
  #        - name: python
  #          image: python:3
  #          command: "/bin/sh -c"
  #          args: "cat"
  #          ttyEnabled: true
  #          privileged: true
  #          resourceRequestCpu: "400m"
  #          resourceRequestMemory: "512Mi"
  #          resourceLimitCpu: "1"
  #          resourceLimitMemory: "1024Mi"

# Here you can add additional agents
# They inherit all values from `agent` so you only need to specify values which differ
additionalAgents: {}
#  maven:
#    podName: maven
#    customJenkinsLabels: maven
#    # An example of overriding the jnlp container
#    # sideContainerName: jnlp
#    image: jenkins/jnlp-agent-maven
#    tag: latest
#  python:
#    podName: python
#    customJenkinsLabels: python
#    sideContainerName: python
#    image: python
#    tag: "3"
#    command: "/bin/sh -c"
#    args: "cat"
#    TTYEnabled: true

persistence:
  enabled: true
  ## A manually managed Persistent Volume and Claim
  ## Requires persistence.enabled: true
  ## If defined, PVC must be created manually before volume will be bound
  existingClaim:
  ## jenkins data Persistent Volume Storage Class
  ## If defined, storageClassName: <storageClass>
  ## If set to "-", storageClassName: "", which disables dynamic provisioning
  ## If undefined (the default) or set to null, no storageClassName spec is
  ##   set, choosing the default provisioner.  (gp2 on AWS, standard on
  ##   GKE, AWS & OpenStack)
  ##
  storageClass:
  annotations: {}
  accessMode: "ReadWriteOnce"
  size: "8Gi"
  volumes:
  #  - name: nothing
  #    emptyDir: {}
  mounts:
  #  - mountPath: /var/nothing
  #    name: nothing
  #    readOnly: true

networkPolicy:
  # Enable creation of NetworkPolicy resources.
  enabled: false
  # For Kubernetes v1.4, v1.5 and v1.6, use 'extensions/v1beta1'
  # For Kubernetes v1.7, use 'networking.k8s.io/v1'
  apiVersion: networking.k8s.io/v1
  # You can allow agents to connect from both within the cluster (from within specific/all namespaces) AND/OR from a given external IP range
  internalAgents:
    allowed: true
    podLabels: {}
    namespaceLabels: {}
      # project: myproject
  externalAgents: {}
  #   ipCIDR: 172.17.0.0/16
  #   except:
  #     - 172.17.1.0/24

## Install Default RBAC roles and bindings
rbac:
  create: true
  readSecrets: false

serviceAccount:
  create: true
  # The name of the service account is autogenerated by default
  name:
  annotations: {}
  imagePullSecretName:


serviceAccountAgent:
  # Specifies whether a ServiceAccount should be created
  create: false
  # The name of the ServiceAccount to use.
  # If not set and create is true, a name is generated using the fullname template
  name:
  annotations: {}
  imagePullSecretName:

## Backup cronjob configuration
## Ref: https://github.com/maorfr/kube-tasks
backup:
  # Backup must use RBAC
  # So by enabling backup you are enabling RBAC specific for backup
  enabled: false
  # Used for label app.kubernetes.io/component
  componentName: "backup"
  # Schedule to run jobs. Must be in cron time format
  # Ref: https://crontab.guru/
  schedule: "0 2 * * *"
  labels: {}
  annotations: {}
    # Example for authorization to AWS S3 using kube2iam or IRSA
    # Can also be done using environment variables
    # iam.amazonaws.com/role: "jenkins"
    # "eks.amazonaws.com/role-arn": "arn:aws:iam::123456789012:role/jenkins-backup"
  # Set this to terminate the job that is running/failing continously and set the job status to "Failed"
  activeDeadlineSeconds: ""
  image:
    repository: "maorfr/kube-tasks"
    tag: "0.2.0"
  # Additional arguments for kube-tasks
  # Ref: https://github.com/maorfr/kube-tasks#simple-backup
  extraArgs: []
  # Add existingSecret for AWS credentials
  existingSecret: {}
  ## Example for using an existing secret
   # jenkinsaws:
  ## Use this key for AWS access key ID
     # awsaccesskey: jenkins_aws_access_key
  ## Use this key for AWS secret access key
     # awssecretkey: jenkins_aws_secret_key
  # Add additional environment variables
   # jenkinsgcp:
  ## Use this key for GCP credentials
     # gcpcredentials: credentials.json
  env: []
  # Example environment variable required for AWS credentials chain
  # - name: "AWS_REGION"
  #   value: "us-east-1"
  resources:
    requests:
      memory: 1Gi
      cpu: 1
    limits:
      memory: 1Gi
      cpu: 1
  # Destination to store the backup artifacts
  # Supported cloud storage services: AWS S3, Minio S3, Azure Blob Storage, Google Cloud Storage
  # Additional support can added. Visit this repository for details
  # Ref: https://github.com/maorfr/skbn
  destination: "s3://jenkins-data/backup"
  # By enabling only the jenkins_home/jobs folder gets backed up, not the whole jenkins instance
  onlyJobs: false
  # Enable backup pod security context (must be `true` if runAsUser or fsGroup are set)
  usePodSecurityContext: true
  # When setting runAsUser to a different value than 0 also set fsGroup to the same value:
  runAsUser: 1000
  fsGroup: 1000
  securityContextCapabilities: {}
  #  drop:
  #    - NET_RAW
checkDeprecation: true
student_01_d68b621031ad@cloudshell:~/continuous-deployment-on-kubernetes (qwiklabs-gcp-00-a9aaf8558318)$
</pre>