```
Welcome to Cloud Shell! Type "help" to get started.
Your Cloud Platform project in this session is set to qwiklabs-gcp-04-f1995af4acaf.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ gcloud auth list
Credentialed Accounts

ACTIVE: *
ACCOUNT: student-01-a0afb218bce0@qwiklabs.net

To set the active account, run:
    $ gcloud config set account `ACCOUNT`

student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ gcloud config list project
[core]
project = qwiklabs-gcp-04-f1995af4acaf

Your active configuration is: [cloudshell-10437]
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ export my_cluster=myKuberCluster
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ export my_zone=us-central1-a
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ gcloud con
config      container
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ gcloud container clusters create $my_cluster --zone=$my_zone --num-nodes=3 --enable-ip-alias
Note: The Pod address range limits the maximum size of the cluster. Please refer to https://cloud.google.com/kubernetes-engine/docs/how-to/flexible-pod-cidr to learn how to optimize IP address allocation.
ERROR: (gcloud.container.clusters.create) ResponseError: code=400, message=Invalid value for field "cluster.name": "myKuberCluster". Must be a match of regex '(?:[a-z](?:[-a-z0-9]{0,38}[a-z0-9])?)' (only lowercase alphanumerics and '-' allow
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl config view
apiVersion: v1
clusters:
- cluster:
    certificate-authority-data: DATA+OMITTED
    server: https://34.121.254.187
  name: gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1
contexts:
- context:
    cluster: gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1
    user: gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1
  name: gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1
current-context: gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1
kind: Config
preferences: {}
users:
- name: gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1
  user:
    auth-provider:
      config:
        cmd-args: config config-helper --format=json
        cmd-path: /usr/lib/google-cloud-sdk/bin/gcloud
        expiry-key: '{.credential.token_expiry}'
        token-key: '{.credential.access_token}'
      name: gcp
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl
alpha          api-versions   auth           cluster-info   cordon         debug          diff           exec           get            label          patch          proxy          run            taint          version
annotate       apply          autoscale      completion     cp             delete         drain          explain        help           logs           plugin         replace        scale          top            wait
api-resources  attach         certificate    config         create         describe       edit           expose         kustomize      options        port-forward   rollout        set            uncordon
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl cluster-info
W0528 07:45:07.535365    1206 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
Kubernetes control plane is running at https://34.121.254.187
GLBCDefaultBackend is running at https://34.121.254.187/api/v1/namespaces/kube-system/services/default-http-backend:http/proxy
KubeDNS is running at https://34.121.254.187/api/v1/namespaces/kube-system/services/kube-dns:dns/proxy
Metrics-server is running at https://34.121.254.187/api/v1/namespaces/kube-system/services/https:metrics-server:/proxy

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl config current-context
gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl config get-contexts
CURRENT   NAME                                                                CLUSTER                                                             AUTHINFO                                                            NAMESPACE
*         gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1   gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1   gke_qwiklabs-gcp-04-f1995af4acaf_us-central1-a_standard-cluster-1
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl get pods
W0528 07:47:00.469135    1242 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
No resources found in default namespace.
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl get cluster
W0528 07:47:13.041226    1249 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
error: the server doesn't have a resource type "cluster"
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ gcloud get cluster
ERROR: (gcloud) Invalid choice: 'get'.
Maybe you meant:
  gcloud container clusters describe
  gcloud container clusters get-credentials
  gcloud bigtable clusters describe
  gcloud dataproc clusters describe

To search the help text of gcloud commands, run:
  gcloud help -- SEARCH_TERMS
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ gcloud container clusters describe
ERROR: (gcloud.container.clusters.describe) argument NAME: Must be specified.
Usage: gcloud container clusters describe NAME [optional flags]
  optional flags may be  --help | --region | --zone

For detailed information on this command and its flags, run:
  gcloud container clusters describe --help
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ gcloud container clusters describe $my_cluster --zone=$my_zone
addonsConfig:
  gcePersistentDiskCsiDriverConfig:
    enabled: true
  kubernetesDashboard:
    disabled: true
  networkPolicyConfig:
    disabled: true
clusterIpv4Cidr: 10.8.0.0/14
createTime: '2022-05-28T07:35:43+00:00'
currentMasterVersion: 1.21.11-gke.1100
currentNodeCount: 3
currentNodeVersion: 1.21.11-gke.1100
databaseEncryption:
  state: DECRYPTED
defaultMaxPodsConstraint:
  maxPodsPerNode: '110'
endpoint: 34.121.254.187
id: d59b098f1cee48a986fb6cf9e4b80f3c0d4df01344874f94837c8e855b68d982
initialClusterVersion: 1.21.11-gke.1100
instanceGroupUrls:
- https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-f1995af4acaf/zones/us-central1-a/instanceGroupManagers/gke-standard-cluster-1-default-pool-a4341a5b-grp
ipAllocationPolicy:
  clusterIpv4Cidr: 10.8.0.0/14
  clusterIpv4CidrBlock: 10.8.0.0/14
  clusterSecondaryRangeName: gke-standard-cluster-1-pods-d59b098f
  servicesIpv4Cidr: 10.12.0.0/20
  servicesIpv4CidrBlock: 10.12.0.0/20
  servicesSecondaryRangeName: gke-standard-cluster-1-services-d59b098f
  useIpAliases: true
labelFingerprint: a9dc16a7
legacyAbac: {}
location: us-central1-a
locations:
- us-central1-a
loggingConfig:
  componentConfig:
    enableComponents:
    - SYSTEM_COMPONENTS
    - WORKLOADS
loggingService: logging.googleapis.com/kubernetes
maintenancePolicy:
  resourceVersion: e3b0c442
masterAuth:
  clusterCaCertificate: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUVMVENDQXBXZ0F3SUJBZ0lSQUxpSFVpbmZkdVA2WC9vMmdORXlVejR3RFFZSktvWklodmNOQVFFTEJRQXcKTHpFdE1Dc0dBMVVFQXhNa01UVTBaRE5rTVRJdFpUWm1aaTAwTmpVeExXSmtZVGd0WVRObVpEYzFPRFppWXpWbApNQ0FYRFRJeU1EVXlPREEyTXpVME5Wb1lEekl3TlRJd05USXdNRGN6TlRRMVdqQXZNUzB3S3dZRFZRUURFeVF4Ck5UUmtNMlF4TWkxbE5tWm1MVFEyTlRFdFltUmhPQzFoTTJaa056VTRObUpqTldVd2dnR2lNQTBHQ1NxR1NJYjMKRFFFQkFRVUFBNElCandBd2dnR0tBb0lCZ1FERVpMb1JDTlVBODdPZTA5dDMxRE5zd3J0dHE1YmxzVW9mT0lPRgo3UUg1SUlTNWVIdzFRcFBTcW1TMVU0c2R2a01PRVNqYVkzaWUvbDVtallDcm5VNXFhWlcxOW1lWE9Za2hvTmhFClVaZXZSclZHVHR3aEJBeTFvbjk1UWpRNGtzOWZiTWY1N1VQWk40ZXNMRXNzSFB6b0V0VlQxd0k1MDZLUHExVmgKL1dNRU9Ubm02eTg5U3o4UFVsck1RWUtYMUtWenF5RG9oYXR2dm1TeWVnNU1MMGE1anhnRkk4UndvemdodURzaApQSm1kY1RBOFo4N0Y2UkpUaFphV0pwZ1B1MlZHWi9ZaElhamQ3Y3IrWWNraDJ0U0dKTHlNVzlyK093RnI4MWl6CkRWOHZJNlNuYjVhQXNMWWRGOGZQUGlKMjRxbXhydE51eHg5S0U0YWJJdTBUbERMVlBqdk56UHV2RnVYRUp4NXEKemthL0xPL2RmYUhlaXRhaE9QMlUrYVBLSGwrbDV0aklkVzkrSXpwWERuemJMOExsa0NPanI4eG05dkVxVGV6SApPdEUwVk9EZk5YUUgwOHJOdm50a0tyZDltbFcrWnZPejkzOVAyOFdzN3FpQmJDMVZZeGJRVlVVTVU4T2VFYk9FClpIQnNrVCttZDRTaVRYR1QzZ2ZCTGRRZm9GMENBd0VBQWFOQ01FQXdEZ1lEVlIwUEFRSC9CQVFEQWdJRU1BOEcKQTFVZEV3RUIvd1FGTUFNQkFmOHdIUVlEVlIwT0JCWUVGR3ZPdnU3L2FRVnRKWTAwMnB5VUF2TlJnUFdtTUEwRwpDU3FHU0liM0RRRUJDd1VBQTRJQmdRQVJJMDVtc0JvQ043VU4vcDFIQU5TM2duc2Y4ajVZRDdwSlBERFdkVmdyClhCQjM1OWhMYTE5d0piSlI1ODZ3Wi9uWjNpRHBzZ1pGc2ptZmJzQzc2b0c1SWZyeVc4ZXRZL1hKaUVjb3I1Y24KZVNaNW8zUUVqaUgvTzgyczVZYUkvS1c1VnpKN2NxYjVkc2twSm1vVUd5SVZOc2owSXpDd0R0Q3ptSWkxNnVJQgpFcHdZQnhGd1Z4SGU5R0RTOTd5NHhWbFlZYW1tdlRHV01QczI5bzBURXZQQTk2MlR5aXF3NVRnSXlkTExrbzdpCjJnTk1sN0dCeFp5SjFCRkhKSzY2UEd5UnZMMDBWZUE0K0N1USs2Y2x5eXZCRmM4Yk11SkViZGNKZ2FhSDNwcEgKK2s1ek9VM1E3d1Z0SHFFaTRZa09ia2ZENFdYRFNGaUgyUEVaZVZZR1M0K0p2V1FGZU1RNnFENHMrRG0rMitSMApsQ3pLUVlXMXJQbWpyV2NrV3RabHdpQnVjV1RJN29RZjh2YzlaN21NMEdqVFZJV2Y5dzZjZFI1eFpKZWhhRjlzCldEZEdNYkxnSUJxYVh4SSs0SGtQUG9LTGFZekkyd2hDaU1vSGJlSEJsd2R1ZDRhclBlM1MrN1duWHdmdys1aXMKeEFjNE5PYkFZUmhLL2VGeWlGYThPS2M9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
monitoringConfig:
  componentConfig:
    enableComponents:
    - SYSTEM_COMPONENTS
monitoringService: monitoring.googleapis.com/kubernetes
name: standard-cluster-1
network: default
networkConfig:
  network: projects/qwiklabs-gcp-04-f1995af4acaf/global/networks/default
  serviceExternalIpsConfig: {}
  subnetwork: projects/qwiklabs-gcp-04-f1995af4acaf/regions/us-central1/subnetworks/default
nodeConfig:
  diskSizeGb: 100
  diskType: pd-standard
  imageType: COS_CONTAINERD
  machineType: e2-medium
  metadata:
    disable-legacy-endpoints: 'true'
  oauthScopes:
  - https://www.googleapis.com/auth/devstorage.read_only
  - https://www.googleapis.com/auth/logging.write
  - https://www.googleapis.com/auth/monitoring
  - https://www.googleapis.com/auth/service.management.readonly
  - https://www.googleapis.com/auth/servicecontrol
  - https://www.googleapis.com/auth/trace.append
  serviceAccount: default
  shieldedInstanceConfig:
    enableIntegrityMonitoring: true
nodePoolAutoConfig: {}
nodePoolDefaults:
  nodeConfigDefaults: {}
nodePools:
- config:
    diskSizeGb: 100
    diskType: pd-standard
    imageType: COS_CONTAINERD
    machineType: e2-medium
    metadata:
      disable-legacy-endpoints: 'true'
    oauthScopes:
    - https://www.googleapis.com/auth/devstorage.read_only
    - https://www.googleapis.com/auth/logging.write
    - https://www.googleapis.com/auth/monitoring
    - https://www.googleapis.com/auth/service.management.readonly
    - https://www.googleapis.com/auth/servicecontrol
    - https://www.googleapis.com/auth/trace.append
    serviceAccount: default
    shieldedInstanceConfig:
      enableIntegrityMonitoring: true
  initialNodeCount: 3
  instanceGroupUrls:
  - https://www.googleapis.com/compute/v1/projects/qwiklabs-gcp-04-f1995af4acaf/zones/us-central1-a/instanceGroupManagers/gke-standard-cluster-1-default-pool-a4341a5b-grp
  locations:
  - us-central1-a
  management:
    autoRepair: true
    autoUpgrade: true
  maxPodsConstraint:
    maxPodsPerNode: '110'
  name: default-pool
  networkConfig:
    podIpv4CidrBlock: 10.8.0.0/14
    podRange: gke-standard-cluster-1-pods-d59b098f
  podIpv4CidrSize: 24
  selfLink: https://container.googleapis.com/v1/projects/qwiklabs-gcp-04-f1995af4acaf/zones/us-central1-a/clusters/standard-cluster-1/nodePools/default-pool
  status: RUNNING
  upgradeSettings:
    maxSurge: 1
  version: 1.21.11-gke.1100
notificationConfig:
  pubsub: {}
releaseChannel:
  channel: REGULAR
selfLink: https://container.googleapis.com/v1/projects/qwiklabs-gcp-04-f1995af4acaf/zones/us-central1-a/clusters/standard-cluster-1
servicesIpv4Cidr: 10.12.0.0/20
shieldedNodes:
  enabled: true
status: RUNNING
subnetwork: default
zone: us-central1-a
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl get nodes
W0528 07:48:56.920202    1306 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
NAME                                                STATUS   ROLES    AGE   VERSION
gke-standard-cluster-1-default-pool-a4341a5b-25sc   Ready    <none>   10m   v1.21.11-gke.1100
gke-standard-cluster-1-default-pool-a4341a5b-cjg7   Ready    <none>   10m   v1.21.11-gke.1100
gke-standard-cluster-1-default-pool-a4341a5b-n44p   Ready    <none>   10m   v1.21.11-gke.1100
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ gcloud container clusters describe nodes $my_cluster
ERROR: (gcloud.container.clusters.describe) unrecognized arguments: standard-cluster-1

To search the help text of gcloud commands, run:
  gcloud help -- SEARCH_TERMS
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl create deployment nginx nginx-dp
error: required flag(s) "image" not set
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl create deployment --image nginx nginx-dp
W0528 07:51:33.568637    1387 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
deployment.apps/nginx-dp created
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl get pods
W0528 07:52:21.108155    1395 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
NAME                       READY   STATUS    RESTARTS   AGE
nginx-dp-5fcfbd685-c4f24   1/1     Running   0          47s
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ ^C
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ export my_ng=nginx-dp-5fcfbd685-c4f24
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl describe pod $my_ng
W0528 07:53:17.773652    1408 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
Name:         nginx-dp-5fcfbd685-c4f24
Namespace:    default
Priority:     0
Node:         gke-standard-cluster-1-default-pool-a4341a5b-n44p/10.128.0.2
Start Time:   Sat, 28 May 2022 07:51:34 +0000
Labels:       app=nginx-dp
              pod-template-hash=5fcfbd685
Annotations:  <none>
Status:       Running
IP:           10.8.0.4
IPs:
  IP:           10.8.0.4
Controlled By:  ReplicaSet/nginx-dp-5fcfbd685
Containers:
  nginx:
    Container ID:   containerd://159354c9ae3a2a846eb8867a8b41cab27e555dd1ed6b4ffb6b652048467edbad
    Image:          nginx
    Image ID:       docker.io/library/nginx@sha256:160f592018e5097420515565a34f04e5266a7c0fa5daaa21edc3b1dd007ab042
    Port:           <none>
    Host Port:      <none>
    State:          Running
      Started:      Sat, 28 May 2022 07:51:39 +0000
    Ready:          True
    Restart Count:  0
    Environment:    <none>
    Mounts:
      /var/run/secrets/kubernetes.io/serviceaccount from kube-api-access-qfjs5 (ro)
Conditions:
  Type              Status
  Initialized       True
  Ready             True
  ContainersReady   True
  PodScheduled      True
Volumes:
  kube-api-access-qfjs5:
    Type:                    Projected (a volume that contains injected data from multiple sources)
    TokenExpirationSeconds:  3607
    ConfigMapName:           kube-root-ca.crt
    ConfigMapOptional:       <nil>
    DownwardAPI:             true
QoS Class:                   BestEffort
Node-Selectors:              <none>
Tolerations:                 node.kubernetes.io/not-ready:NoExecute op=Exists for 300s
                             node.kubernetes.io/unreachable:NoExecute op=Exists for 300s
Events:
  Type    Reason     Age   From               Message
  ----    ------     ----  ----               -------
  Normal  Scheduled  104s  default-scheduler  Successfully assigned default/nginx-dp-5fcfbd685-c4f24 to gke-standard-cluster-1-default-pool-a4341a5b-n44p
  Normal  Pulling    103s  kubelet            Pulling image "nginx"
  Normal  Pulled     99s   kubelet            Successfully pulled image "nginx" in 3.887335815s
  Normal  Created    99s   kubelet            Created container nginx
  Normal  Started    99s   kubelet            Started container nginx
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ cat >> ~/test.html
<html> <header><title>This is title</title></header>
<body> Hello world </body>
</html>

^C
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ cat  ~/test.html
<html> <header><title>This is title</title></header>
<body> Hello world </body>
</html>

student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl cp ~/test.html $my_ng:/usr/share/nano/
asm.nanorc         cmake.nanorc       default.nanorc     go.nanorc          html.nanorc        lua.nanorc         nanohelp.nanorc    ocaml.nanorc       po.nanorc          sh.nanorc          tex.nanorc
autoconf.nanorc    c.nanorc           elisp.nanorc       groff.nanorc       java.nanorc        makefile.nanorc    nanorc.nanorc      patch.nanorc       python.nanorc      sql.nanorc         xml.nanorc
awk.nanorc         css.nanorc         email.nanorc       guile.nanorc       javascript.nanorc  man.nanorc         nftables.nanorc    perl.nanorc        ruby.nanorc        tcl.nanorc
changelog.nanorc   debian.nanorc      extra/             haskell.nanorc     json.nanorc        markdown.nanorc    objc.nanorc        php.nanorc         rust.nanorc        texinfo.nanorc
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl cp ~/test.html $my_ng:/usr/share/nginx/html/test.html
W0528 07:55:26.327544    1479 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl expose pod $my_ng --port=80 --type=LoadBalancer
W0528 07:56:21.899092    1487 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
service/nginx-dp-5fcfbd685-c4f24 exposed
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl get services
W0528 07:56:32.478297    1494 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
NAME                       TYPE           CLUSTER-IP    EXTERNAL-IP   PORT(S)        AGE
kubernetes                 ClusterIP      10.12.0.1     <none>        443/TCP        18m
nginx-dp-5fcfbd685-c4f24   LoadBalancer   10.12.7.140   <pending>     80:32166/TCP   10s
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ kubectl get services
W0528 07:57:08.159496    1502 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
NAME                       TYPE           CLUSTER-IP    EXTERNAL-IP     PORT(S)        AGE
kubernetes                 ClusterIP      10.12.0.1     <none>          443/TCP        19m
nginx-dp-5fcfbd685-c4f24   LoadBalancer   10.12.7.140   35.239.76.146   80:32166/TCP   46s
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ curl http://35.239.76.146/test.html
<html> <header><title>This is title</title></header>
<body> Hello world </body>
</html>

student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ git clone https://github.com/GoogleCloudPlatform/training-data-analyst
Cloning into 'training-data-analyst'...
remote: Enumerating objects: 58721, done.
remote: Counting objects: 100% (310/310), done.
remote: Compressing objects: 100% (135/135), done.
remote: Total 58721 (delta 202), reused 265 (delta 167), pack-reused 58411
Receiving objects: 100% (58721/58721), 652.68 MiB | 17.02 MiB/s, done.
Resolving deltas: 100% (37213/37213), done.
Updating files: 100% (12610/12610), done.
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ ln -s ~/training-data-analyst/courses/ak8s/v1.1 ~/ak8s
student_01_a0afb218bce0@cloudshell:~ (qwiklabs-gcp-04-f1995af4acaf)$ cd ~/ak8s/GKE_Shell/
student_01_a0afb218bce0@cloudshell:~/ak8s/GKE_Shell (qwiklabs-gcp-04-f1995af4acaf)$ kubectl apply -f ./new-nginx-pod.yaml
W0528 08:01:57.922347    1547 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
pod/new-nginx created
student_01_a0afb218bce0@cloudshell:~/ak8s/GKE_Shell (qwiklabs-gcp-04-f1995af4acaf)$ kubectl get pods
W0528 08:02:13.045847    1556 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
NAME                       READY   STATUS    RESTARTS   AGE
new-nginx                  1/1     Running   0          14s
nginx-dp-5fcfbd685-c4f24   1/1     Running   0          10m
student_01_a0afb218bce0@cloudshell:~/ak8s/GKE_Shell (qwiklabs-gcp-04-f1995af4acaf)$ history
    1  gcloud auth list
    2  gcloud config list project
    3  export my_cluster=myKuberCluster
    4  export my_zone=us-central1-a
    5  gcloud container clusters create $my_cluster --zone=$my_zone --num-nodes=3 --enable-ip-alias
    6  export my_cluster=standard-cluster-1
    7  gcloud container clusters create $my_cluster --zone=$my_zone --num-nodes=3 --enable-ip-alias
    8  source <(kubectl completion bash)
    9  gcloud container clusters get-credentials $my_cluster --zone=$my_zone
   10  ls -a
   11  cat .kube/config
   12  clear
   13  kubectl config view
   14  kubectl cluster-info
   15  kubectl config current-context
   16  kubectl config get-contexts
   17  kubectl get pods
   18  kubectl get cluster
   19  gcloud get cluster
   20  gcloud container clusters describe
   21  gcloud container clusters describe $my_cluster --zone=$my_zone
   22  kubectl get nodes
   23  gcloud container clusters describe nodes $my_cluster
   24  kubectl create deployment nginx nginx-dp
   25  kubectl create deployment --image nginx nginx-dp
   26  kubectl get pods
   27  export my_ng=nginx-dp-5fcfbd685-c4f24
   28  kubectl describe pod $my_ng
   29  cat >> ~/test.html
   30  cat  ~/test.html
   31  kubectl cp ~/test.html $my_ng:/usr/share/nginx/html/test.html
   32  kubectl expose pod $my_ng --port=80 --type=LoadBalancer
   33  kubectl get services
   34  curl http://35.239.76.146/test.html
   35  git clone https://github.com/GoogleCloudPlatform/training-data-analyst
   36  ln -s ~/training-data-analyst/courses/ak8s/v1.1 ~/ak8s
   37  cd ~/ak8s/GKE_Shell/
   38  kubectl apply -f ./new-nginx-pod.yaml
   39  kubectl get pods
   40  history
student_01_a0afb218bce0@cloudshell:~/ak8s/GKE_Shell (qwiklabs-gcp-04-f1995af4acaf)$ kubectl exec -it new-nginx /bin/bash
kubectl exec [POD] [COMMAND] is DEPRECATED and will be removed in a future version. Use kubectl exec [POD] -- [COMMAND] instead.
W0528 08:08:33.999901    1572 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
root@new-nginx:/# apt-get update
Get:1 http://security.debian.org/debian-security bullseye-security InRelease [44.1 kB]
Get:2 http://deb.debian.org/debian bullseye InRelease [116 kB]
Get:3 http://deb.debian.org/debian bullseye-updates InRelease [39.4 kB]
Get:4 http://security.debian.org/debian-security bullseye-security/main amd64 Packages [151 kB]
Get:5 http://deb.debian.org/debian bullseye/main amd64 Packages [8182 kB]
Get:6 http://deb.debian.org/debian bullseye-updates/main amd64 Packages [2596 B]
Fetched 8535 kB in 2s (4819 kB/s)                         
Reading package lists... Done
root@new-nginx:/# apt-get install nano
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libgpm2 libncursesw6
Suggested packages:
  gpm hunspell
The following NEW packages will be installed:
  libgpm2 libncursesw6 nano
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 825 kB of archives.
After this operation, 3087 kB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://deb.debian.org/debian bullseye/main amd64 libncursesw6 amd64 6.2+20201114-2 [132 kB]
Get:2 http://deb.debian.org/debian bullseye/main amd64 nano amd64 5.4-2 [657 kB]
Get:3 http://deb.debian.org/debian bullseye/main amd64 libgpm2 amd64 1.20.7-8 [35.6 kB]
Fetched 825 kB in 0s (6703 kB/s)
debconf: delaying package configuration, since apt-utils is not installed
Selecting previously unselected package libncursesw6:amd64.
(Reading database ... 7824 files and directories currently installed.)
Preparing to unpack .../libncursesw6_6.2+20201114-2_amd64.deb ...
Unpacking libncursesw6:amd64 (6.2+20201114-2) ...
Selecting previously unselected package nano.
Preparing to unpack .../archives/nano_5.4-2_amd64.deb ...
Unpacking nano (5.4-2) ...
Selecting previously unselected package libgpm2:amd64.
Preparing to unpack .../libgpm2_1.20.7-8_amd64.deb ...
Unpacking libgpm2:amd64 (1.20.7-8) ...
Setting up libgpm2:amd64 (1.20.7-8) ...
Setting up libncursesw6:amd64 (6.2+20201114-2) ...
Setting up nano (5.4-2) ...
update-alternatives: using /bin/nano to provide /usr/bin/editor (editor) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/editor.1.gz because associated file /usr/share/man/man1/nano.1.gz (of link group editor) doesn't exist
update-alternatives: using /bin/nano to provide /usr/bin/pico (pico) in auto mode
update-alternatives: warning: skip creation of /usr/share/man/man1/pico.1.gz because associated file /usr/share/man/man1/nano.1.gz (of link group pico) doesn't exist
Processing triggers for libc-bin (2.31-13+deb11u3) ...
root@new-nginx:/# cat >> /usr/share/nginx/html
bash: /usr/share/nginx/html: Is a directory
root@new-nginx:/# cat >> /usr/share/nginx/html/text.html
<body> THis is from new-nginx</body>

^C
root@new-nginx:/# exit
exit
command terminated with exit code 130
student_01_a0afb218bce0@cloudshell:~/ak8s/GKE_Shell (qwiklabs-gcp-04-f1995af4acaf)$ kubectl port-forward new-nginx 10081:80
W0528 08:11:42.335525    1604 gcp.go:120] WARNING: the gcp auth plugin is deprecated in v1.22+, unavailable in v1.25+; use gcloud instead.
To learn more, consult https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
Forwarding from 127.0.0.1:10081 -> 80
Handling connection for 10081
^Cstudent_01_a0afb218bce0@cloudshell:~/ak8s/GKE_Shell (qwiklabs-gcp-04-f1995af4acaf)$ history
    1  gcloud auth list
    2  gcloud config list project
    3  export my_cluster=myKuberCluster
    4  export my_zone=us-central1-a
    5  gcloud container clusters create $my_cluster --zone=$my_zone --num-nodes=3 --enable-ip-alias
    6  export my_cluster=standard-cluster-1
    7  gcloud container clusters create $my_cluster --zone=$my_zone --num-nodes=3 --enable-ip-alias
    8  source <(kubectl completion bash)
    9  gcloud container clusters get-credentials $my_cluster --zone=$my_zone
   10  ls -a
   11  cat .kube/config
   12  clear
   13  kubectl config view
   14  kubectl cluster-info
   15  kubectl config current-context
   16  kubectl config get-contexts
   17  kubectl get pods
   18  kubectl get cluster
   19  gcloud get cluster
   20  gcloud container clusters describe
   21  gcloud container clusters describe $my_cluster --zone=$my_zone
   22  kubectl get nodes
   23  gcloud container clusters describe nodes $my_cluster
   24  kubectl create deployment nginx nginx-dp
   25  kubectl create deployment --image nginx nginx-dp
   26  kubectl get pods
   27  export my_ng=nginx-dp-5fcfbd685-c4f24
   28  kubectl describe pod $my_ng
   29  cat >> ~/test.html
   30  cat  ~/test.html
   31  kubectl cp ~/test.html $my_ng:/usr/share/nginx/html/test.html
   32  kubectl expose pod $my_ng --port=80 --type=LoadBalancer
   33  kubectl get services
   34  curl http://35.239.76.146/test.html
   35  git clone https://github.com/GoogleCloudPlatform/training-data-analyst
   36  ln -s ~/training-data-analyst/courses/ak8s/v1.1 ~/ak8s
   37  cd ~/ak8s/GKE_Shell/
   38  kubectl apply -f ./new-nginx-pod.yaml
   39  kubectl get pods
   40  history
   41  kubectl exec -it new-nginx /bin/bash
   42  kubectl port-forward new-nginx 10081:80
   43  history
student_01_a0afb218bce0@cloudshell:~/ak8s/GKE_Shell (qwiklabs-gcp-04-f1995af4acaf)$

```