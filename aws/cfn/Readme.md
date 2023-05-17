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



   I created the cicd-deploy, nested stack, codebuild.yaml, template.yaml and deploy to cfn, Then i have to go to Codepipeline connection and update the pending connection


   I ran through this error when deploying  CFN static website hosting
   
   Resource handler returned message: "Invalid request provided: AWS::CloudFront::Distribution: The certificate that is attached to your distribution doesn't cover the alternate domain name (CNAME) that you're trying to add. For more details, see: https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/CNAMEs.html#alternate-domain-names-requirements (Service: CloudFront, Status Code: 400, Request ID: 86011233-b6c5-4771-9ac3-1ce2540d1220)" (RequestToken: c9070ef5-2c08-71c7-cf9e-52295f159695, HandlerErrorCode: InvalidRequest)

   I had to go into ACM. I go into my certificate ID and find out i only have *.harvestdam.com as domain. So i had to reqest a new certificate and the new certificate have to domain *.harvestdam.com and harvestdam.com but the certificate is not in use yet, Then went into Cloudfront edit my SSL certificate to the new SSL certificate, i choose the HTTP/2 and HTTP/3 based on my configuration on my code and i save changes. I wait for the clondfront to deploy the new changes and i go ahead and provision my infrastructure. 

   For the CertificateArn - Make sure to use ACM us-east-1 Arn