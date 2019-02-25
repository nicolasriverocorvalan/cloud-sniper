![alt text](Images/logo.png "Cloud Sniper")
<br> </br>
## *Cloud Security Operations*

### *What is Cloud Sniper?*

***Cloud Sniper*** is designed to manage *Security Operations* in cloud environments. It is an open platform that allows responding to security incidents by analyzing and correlating native cloud artifacts. Cloud Sniper is to be used as a *Virtual Security Operations Center (vSOC)* to detect and remediate security incidents providing a complete visibility into the company's cloud security position. 

With this platform you will have a complete and comprehensive management of security incidents, reducing the costs of having many level-1 security analysts looking for cloud-based *Indicators of Compromise*. These IOCs, if not correlated, generate difficulties in detecting complex attacks. At the same time, it allows the advanced security analysts to integrate the platform with external forensic or incident and response tools to provide security feeds into the platform.

The cloud-based platform is deployed automatically and provides complete and native integration with all the necessary information sources, avoiding the problem that many vendors have when deploying or collecting data.

***Cloud Sniper*** receives cloud-based and third-parties feeds and automatically responds protecting your infrastructure and generating a knowledge database of IOCs that are affecting your platform. This is the best way to gain visibility in environments where information can be bounded by the *Shared Responsibility Model* enforced by cloud providers.

To detect advanced IOCs, which may easily be ignored, the ***Cloud Sniper Analytics*** module correlates events generating such IOCs. These will give visibility on complex artifacts to analyze, helping both to stop the attack and to analyze the attacker's TTPs.

It is currently available for **AWS** environments, but it will be extended to others cloud platforms.
<br> </br>
### *The Big Picture*

![alt text](Images/deployment.png "Cloud Sniper")
<br> </br>
### WIKI => [HOW IT WORKS](Wiki/WIKI.md)

### NEWS!!! Cloud Sniper Latest Releases

    1.  Automatic Incident and Response 
        1.  WAF filtering
        2.  NACLs filtering
        3.  IOCs knowledge database

    2.  Cloud Sniper Analytics Module
        2.  Beaconing detection with VPC Flow Logs (C2 detection analytics)

### Upcoming Features and Integrations

    1.  Cloud Sniper runs within a lambda function, the standalone version is on the way
    2.  Centralized management of security incidents for multiple accounts
    3.  Security analytics module 
        1.  WAF analytics
    4.  Case management (automatic case creation)
    5.  IOCs enrichment and Threat Intelligence feeds
    6.  Tactics, Techniques and Procedures (TTPs). MITRE approach
    7.  Automatic security reports based on well-known security standards (NIST)
    8.  Security playbooks for cloud-based environments
    9.  Integration with third-party DFIR tools
    10.  Web Management UI
