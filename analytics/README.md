# Cloud Sniper Analytics module

Ideally, this should be deployed with terra. 

Currenly, VPC-Flowlogs should be stored on S3 and the beaconing module looks for beaconing patterns in those flows.

To configure it, update:
* aws_credentials.txt: your aws credentials for boto3
* environment.env: the s3 keys where to read the VPC flows from and where to write the generated report

Create the docker image on an EC2 instance (`sudo sh docker_build.sh`) and run the container (`sudo docker run cloudsniper/beaconer`). A pdf report is stored in the configured S3 path.
