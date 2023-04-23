# Week 6 — Deploying Containers

HERE ARE THE OVERVIEW FOR WEEK-6-7 (Mar25-April-8)

```sh
Watch ECS Security by Ashish
```

- I Provision ECS Cluster
  ![](assets/ecs-cluster.png)

- I Create ECR repo using AWS CLI and push image for backend-flask
  ![](assets/ecr-repository.png)
  ![](assets/pushimg-to-backend.png)
  
```sh
  Install Postgres Driver in the Backend Application
```

- I Deploy Backend Flask app as a service to Fargate
  ![](assets/backend-flask-app.png)

- I Create ECR repo using AWS CLI and push image for fronted-react-js
  ![](assets/ecr-repository.png)

- I Deploy Frontend React JS app as a service to Fargate
  ![](assets/frontend-react-jsapp.png)

- I Provision and configure Application Load Balancer along with target groups
  ![](assets/t-g-frontend.png)
  ![](assets/t-g-backend.png)
  ![](assets/Load-balancer.png)
  
- Manage my domain using Route53 via hosted zone
  ![](assets/route53.png)
  
- I Create an SSL cerificate via ACM
  ![](assets/ACM-certificate.png)

- I Setup a record set for naked domain to point to frontend-react-js
  ![](assets/loadbalancer-endpoint.png)
  ![](assets/harvestdam-homepage.png)
  ![](assets/homepage-messages.png)

- I Implement and Setup a record set for api subdomain to point to the backend-flask
  ![](assets/target-group.png)

- Configure CORS to only permit traffic from our domain
  ![](assets/cloudmap-namespace.png)

- I Implement Secure Flask by not running in debug mode
  ![](assets/flask-app.png)

```sh
Implement Refresh Token for Amazon Cognito
```

- I Refactor bin directory to be top level
  ![](assets/flask-app.png)

- I Configure task defintions to contain x-ray and turn on Container Insights
  ![](assets/backend-xray.png)
  ![](assets/ecs-cluster.png)
  
```sh
Change Docker Compose to explicitly use a user-defined network
Create Dockerfile specfically for production use case
Using ruby generate out env dot files for docker using erb templates
```
