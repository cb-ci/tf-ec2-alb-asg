see https://sharmilas.medium.com/a-step-by-step-guide-to-creating-load-balancer-and-ec2-with-auto-scaling-group-using-terraform-752afd44df8e

> terraform init

> terraform plan -out=development.tfplan

> terraform apply development.tfplan

DNS
> ci-ha.acaternberg.....com
> LB SSL
> LB SG
> LB Target groups
> Route 53 DNS forward target to LB 
> One TG for each component
>   Root path points to cjoc
> sub paths per TG points to specific  CI Controllers EC2 instance IDS
> SG per EC2 instance 8888 as well as 8080
> Installation  of java 