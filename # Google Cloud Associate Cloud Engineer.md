# Google Cloud
## Associate Cloud Engineer

Chapter # GCloud

GCloud is a command line interface through which we can manage most of the GCP services. 

GCloud is an excellent tool for deployment, however, GCP is not limited to GCloud CLI as there are other CLI tools available for other services. 

Specific CLI for specific services:

Service Name | CLI name
-------------|---------
Cloud Storage | gsutil
Cloud BigQuery | bq
Cloud BigTable | cbt
Kubernetes | kubectl

GCloud is a part of Google SDK and to install it, your local machine must have **Python** installed. For installation instructions, visit [this.](https://cloud.google.com/sdk/docs/install)

Another web based solution is Cloud Shell. 

On cloud shell, check the version of gcloud.
```
gcloud --version
```

Output:
```sh
xxx@cloudshell:~$ gcloud --version
Google Cloud SDK 370.0.0
alpha 2022.01.21
app-engine-go 1.9.72
app-engine-java 1.9.93
app-engine-python 1.9.98
app-engine-python-extras 1.9.96
beta 2022.01.21
bigtable
bq 2.0.73
cbt 0.10.2
cloud-build-local 0.5.2
cloud-datastore-emulator 2.1.0
core 2022.01.21
datalab 20190610
gsutil 5.6
kind 0.7.0
kpt 1.0.0-beta.9
local-extract 1.3.2
minikube 1.24.0
pubsub-emulator 0.6.0
skaffold 1.35.1
```
You can see how many CLIs are already built into it.

## Initialize 

```sh
xxx@cloudshell:~$ gcloud init
Welcome! This command will take you through the configuration of gcloud.

Settings from your current configuration [cloudshell-28465] are:
accessibility:
  screen_reader: 'True'
component_manager:
  disable_update_check: 'True'
compute:
  gce_metadata_read_timeout_sec: '30'
core:
  account: ''
  disable_usage_reporting: 'True'
metrics:
  environment: devshell

Pick configuration to use:
 [1] Re-initialize this configuration [cloudshell-28465] with new settings
 [2] Create a new configuration
Please enter your numeric choice:  2

Enter configuration name. Names start with a lower case letter and contain only lower case letters a-z, digits 0-9, and hyphens '-':  my-default-config
Your current configuration has been set to: [my-default-config]

You can skip diagnostics next time by using the following flag:
  gcloud init --skip-diagnostics

Network diagnostic detects and fixes local network connection issues.
Checking network connection...done.    
Reachability Check passed.
Network diagnostic passed (1/1 checks passed).

Choose the account you would like to use to perform operations for this configuration:
 [1] XXXgcpcloudengr@gmail.com
 [2] Log in with a new account
Please enter your numeric choice:  1

You are logged in as: [XXXgcpcloudengr@gmail.com].

Pick cloud project to use:
 [1] tXXX5
 [2] Create a new project
Please enter numeric choice or text value (must exactly match list item):  1

Your current project has been set to: [tXXX5].

Do you want to configure a default Compute Region and Zone? (Y/n)?  Y

Which Google Compute Engine zone would you like to use as project default?
If you do not specify a zone via a command line flag while working with Compute Engine resources, the default is assumed.
 [1] us-east1-b
 [2] us-east1-c
 [3] us-east1-d
 [4] us-east4-c
 [5] us-east4-b
 [6] us-east4-a
 [7] us-central1-c
 [8] us-central1-a
 [9] us-central1-f
 [10] us-central1-b
 [11] us-west1-b
 [12] us-west1-c
 [13] us-west1-a
 [14] europe-west4-a
 [15] europe-west4-b
 [16] europe-west4-c
 [17] europe-west1-b
 [18] europe-west1-d
 [19] europe-west1-c
 [20] europe-west3-c
 [21] europe-west3-a
 [22] europe-west3-b
 [23] europe-west2-c
 [24] europe-west2-b
 [25] europe-west2-a
 [26] asia-east1-b
 [27] asia-east1-a
 [28] asia-east1-c
 [29] asia-southeast1-b
 [30] asia-southeast1-a
 [31] asia-southeast1-c
 [32] asia-northeast1-b
 [33] asia-northeast1-c
 [34] asia-northeast1-a
 [35] asia-south1-c
 [36] asia-south1-b
 [37] asia-south1-a
 [38] australia-southeast1-b
 [39] australia-southeast1-c
 [40] australia-southeast1-a
 [41] southamerica-east1-b
 [42] southamerica-east1-c
 [43] southamerica-east1-a
 [44] asia-east2-a
 [45] asia-east2-b
 [46] asia-east2-c
 [47] asia-northeast2-a
 [48] asia-northeast2-b
 [49] asia-northeast2-c
 [50] asia-northeast3-a
Did not print [39] options.
Too many options [89]. Enter "list" at prompt to print choices fully.
Please enter numeric choice or text value (must exactly match list item):  Y
Please enter a value between 1 and 89, or a value present in the list:  List
Please enter a value between 1 and 89, or a value present in the list:  1

Your project default Compute Engine zone has been set to [us-east1-b].
You can change it by running [gcloud config set compute/zone NAME].

Your project default Compute Engine region has been set to [us-east1].
You can change it by running [gcloud config set compute/region NAME].

Created a default .boto configuration file at [/home/XXXgcpcloudengr/.boto]. See this file and
[https://cloud.google.com/storage/docs/gsutil/commands/config] for more
information about configuring Google Cloud Storage.
Your Google Cloud SDK is configured and ready to use!

* Commands that require authentication will use XXXgcpcloudengr@gmail.com by default
* Commands will reference project `tXXX5` by default
* Compute Engine commands will use region `us-east1` by default
* Compute Engine commands will use zone `us-east1-b` by default

Run `gcloud help config` to learn how to change individual settings

This gcloud configuration is called [my-default-config]. You can create additional configurations if you work with multiple accounts and/or projects.
Run `gcloud topic configurations` to learn more.

Some things to try next:

* Run `gcloud --help` to see the Cloud Platform services you can interact with. And run `gcloud help COMMAND` to get help on any gcloud command.
* Run `gcloud topic --help` to learn about advanced features of the SDK like arg files and output formatting
XXXgcpcloudengr@cloudshell:~ (tXXX5)$
```

The command `gloud init` allows us to authorize gcloud to use your credentials and also reinitialize and setup configurations. 


### gcloud config list

The command `gcloud config list` allows us to see the current configuration. 

![gcloud config list](gc_img\gcloud_config_list.png)

For exam purpose you need to remember 
- Region
- Zone
- Account
- Project


To specify the current account 
```sh
gcloud config list account
```

However, the same type of command cannot be used to list region or zone.

```sh
gcloud config list region
[ERROR]
```

If we directly put the word region or zone, it will actually search only in the [CORE] part.  To check in any part other than the core, we need to mention it. 

```sh
gcloud config list compute/region
```


# Playing with Compute instances from gcloud

Create an instance
```
gcloud compute instances create <instance name>
```
You may need to provide the zone name and it will create an instance with default configurations.

Delete an instance
```
gcloud compute instances delete <instance name>
```
To list all machine types
```
gcloud compute machine-types list
```


# To create an instance

```sh
gcloud compute instances create instance-cli --project=true-oarlock-336905 --zone=us-central1-a --machine-type=e2-medium --network-interface=network-tier=PREMIUM,subnet=default --metadata=purpose=Testing,impornace=none --maintenance-policy=MIGRATE --service-account=40277976817-compute@developer.gserviceaccount.com --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append --tags=http-server --create-disk=auto-delete=yes,boot=yes,device-name=instance-cli,image=projects/debian-cloud/global/images/debian-10-buster-v20220118,mode=rw,size=10,type=projects/true-oarlock-336905/zones/us-central1-a/diskTypes/pd-balanced --create-disk=description=for\ testing\ from\ cli\ envisonment,device-name=my-custom-disk,mode=rw,name=my-custom-disk,size=10,type=projects/true-oarlock-336905/zones/us-central1-a/diskTypes/pd-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --reservation-affinity=any
```

