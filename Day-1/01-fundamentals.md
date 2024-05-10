# Infrastructure as Code

**In the beginning (before IaC). The process was to:**

a. Manually Configure Servers - Could lead to inconsistencies and errors.\
b. Lack of version control - Diffcult to track and revert to the previous 
    state.\
c. Documentation Heavy - Could become outdated quickly.\
d. Limited Automation - Lacking robustness and flexibility to our present 
    IaC tools.\
e. Slow Provisioning - Involved manual steps leading to delay in 
    deliveries.

IaC addressed these challenges by providing systematic and code-driven 
    approach to infracture management.\
    E.g., Terraform, AWS CloudFormation, Azure Resource Manager, Pulumi, 
    etc.

# Terraform 
## Advantages: 
a. Multi-Cloud Support \
b. Large Ecosystem \
c. Declarative Syntax - specifies the desired and end-state of your 
    infrastructure. Hence easier to understand and maintain.\
d. State Management - Tracks the current state of your infrastructure. 
    Terraform understand the differences between the desired and actual states of your infrastructure, enabling it to make informed decisions 
    when you apply.\
e. Plan and Apply - You can plan and then apply. Prevents unexpected 
    modifications.\
f. Community Support - Large and active user community.\
g. Integartion with other tools - Tools, such as Docker, Kubernetes, 
    Ansible, and Jenkins.\
h. HCL Language - Designed specifically for defining infrastructure. 
    Human-readable and expressive.\





