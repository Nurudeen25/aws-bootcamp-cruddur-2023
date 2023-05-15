## Architecture Guide

Before you run any templates, be sure to create an s3 bucket to contain
all of our artifacts for cloudformation.

```
aws s3 mk s3://cfn-harvestdam-artifacts
export CFN_BUCKET="cfn-harvestdam-artifacts"
gp env CFN_BUCKET="cfn-harvestdam-artifacts"
```

> remember bucket names are unique to the provide code example you may need to adjust

After creating the rds db cfn. Have to change the endpoint from AWS system manager - Parameter store
After implementing the CFN service-deploy, The backend service is still not in healthy, So i checked the
backend TG, to the healthchecks- edit and override the port 80 to 4567 and my backend-service is healthy.

 #use container is for buld the lambda in a container
  # it's still using the runtimes and its not a custom runtime

      6  sam --version
    7  sam docs
    8  chmod u+x ./bin/cfn/ddb-deploy 
    9  ./bin/cfn/ddb-deploy 
   10  sam validate -t aws/cfn/ddb/template.yaml 
   11  python --version
   12  ./bin/cfn/ddb-deploy 
   13  python --version
   14  pyenv install 3.9
   15  ./bin/cfn/ddb-deploy 
   16  chmod u+x ./bin/sam/ddb/build
   17  chmod u+x ./bin/sam/ddb/package 
   18  chmod u+x ./bin/sam/ddb/deploy 
   19  ./bin/sam/ddb/build 
   20  ./bin/sam/ddb/package 
   21  history