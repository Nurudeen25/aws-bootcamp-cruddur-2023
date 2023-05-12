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