![alt text](Images/logo.png "Cloud Sniper")

### *Cloud Security Operations*

***Cloud Sniper*** is designed to manage *Security Operations* in cloud environments. It is an open source platform that allows responding to security incidents by analyzing and correlating native cloud artifacts, intended to be used as the main part of the *Security Operations Center (SOC)*.

***Cloud Sniper*** receives cloud-based and third-parties feeds and automatically responds protecting your infrastructure. At the same time, it makes it possible to generate a knowledge database of indicators of compromise (IOCs) that are affecting your platform. This is an excellent way to gain visibility in environments where information can be bounded due to the *Shared Responsibility Model* enforced by cloud providers.

It is currently available for **AWS** environments, but it will be extended to all cloud platforms.

### *Cloud Deployment*

![alt text](Images/deployment.png "Cloud Sniper")


**Already integrated with these AWS artifacts:**

    1.  GuardDuty (all findings)
    2.  SQS
    3.  CloudWatch
    4.  WAF
    5.  EC2 NACLs
    6.  Dynamo
    7.  IAM
    8.  S3
    9.  Lambda

**Installation**
    
    Cloud Sniper uses Terraform to automatically deploy the entire infrastructure in the cloud. 

    The core is coded in Python so it can be extended according to the needs of each SOC.
    
    You only need to have the AWS profile configured and have the Terraform client installed.

        1.  Deployment (must be located inside the Cloud-Sniper folder):
            1.  terraform init
            2.  terraform plan
            3.  terraform apply [yes]

**Upcoming features and integrations**

    1.  Cloud Sniper runs within a lambda function, but the standalone version is on the way
    2.  Security analytics module
        1.  Beaconing detection with VPC Flow Logs (C2 detection analytics)
    3.  Case management (automatic case creation)
    4.  IOCs enrichment and Threat Intelligence feeds
    5.  Tactics, Techniques and Procedures (TTPs). MITRE approach
    6.  Automatic security reports based on well-known security standards (NIST)
    7.  Security playbooks for cloud-based environments
    8.  Integration with third-party DFIR tools
    9.  Web management UI


