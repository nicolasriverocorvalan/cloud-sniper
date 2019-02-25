# *Cloud Sniper*
## *How it works*

### Cloud Sniper - AWS native version

***Cloud Sniper*** receives cloud-based or third-party feeds to take remediation actions in the cloud. Currently, the AWS native version, gets feeds from GuardDuty which is a continuous security monitoring service that allows detecting threats based on CloudTrial Logs/VPC Flow Logs/DNS Logs artifacts.

The GuardDuty security analysis is based on the *Shared Responsibility Model* of cloud environments, in which the provider has access to hidden information for the security analyst (such as DNS logs). GuardDuty provides findings, categorized in a pseudo *MITRE's TTP's* tagging.

When an incident is detected, ***Cloud Sniper*** automatically analyzes what actions are available to mitigate and remediate that threat. If layer 7/4/3 attacks are taking place it will block the corresponding sources, both in the WAF and in the Network Access Control Lists of the affected instances.

A knowledge database will be created to store the IOCs that affect the cloud environments and will build its own Threat Intelligence feeds to use in the future.

The ***Cloud Sniper Analytics module*** allows to analyze the flow logs of the entire network where an affected instance is deployed and obtain analytics on traffic behavior, looking for Command and Control (C2) activity.

### Installation (AWS)

    Cloud Sniper uses Terraform to automatically deploy the entire infrastructure in the cloud.

    The core is programmed in python. It can be extended according to the needs of each vSOC.
    
    You only need to have the AWS profile configured and the Terraform client installed. For deployment, you should run:

    1.  git clone https://github.com/nicolasriverocorvalan/cloud-sniper.git
    2.  ~$ cd Cloud-Sniper
    3.  ~/Cloud-Sniper$ terraform init
    4.  ~/Cloud-Sniper$ terraform plan
    5.  ~/Cloud-Sniper$ terraform apply [yes]

### AWS artifacts integration:

    1.  GuardDuty (all findings)
    2.  SQS
    3.  CloudWatch
    4.  WAF
    5.  EC2 
    6.  Networking VPC
    7.  Dynamo
    8.  IAM
    9.  S3
    10.  Lambda
    11. Kinesis Firehose
