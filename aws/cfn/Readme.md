## Architecture Guide

Before you run any templates, be sure to create an s3 bucket to contain
all of our artifacts for cloudformation.

```
aws s3 mk s3://cfn-harvestdam-artifacts
export CFN_BUCKET="cfn-harvestdam-artifacts"
gp env CFN_BUCKET="cfn-harvestdam-artifacts"
```

> remember bucket names are unique to the provide code example you may need to adjust