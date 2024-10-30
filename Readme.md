## Terraform code to provision EKS cluster, Cluster Autoscaler, Metrics Server and Nginx with HPA configured.


# Usage
##### Configure aws credentials and run
```bash
terraform init
terraform plan --out=tfplan
terraform apply tfplan
```

##### Get cluter kubeconfig
```bash
aws eks update-kubeconfig --name nginx-cluster
```

##### Push nginx load with below command and wait till it reaches HPA threshold targetCPU(30) and scales in. At some point nginx pods should over commit node so Cluster Autoscaler take stage.
```bash
kubectl run -i --tty load-generator --rm --image=busybox:1.28 --restart=Never -- /bin/sh -c "while sleep 0.01; do wget -q -O- http://nginx; done"
```

# Improvements 
* Better folder structure. Move Autoscaler module and other not related to EKS modules and helm charts to different repo/folders
* S3 State Backup  
* Dynamo DB  lock
