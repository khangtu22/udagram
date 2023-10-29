## AWS RDS Postgres

The application server uses AWS RDS Postgres as the database for storing and retrieving information. The PostgreSQL database is hosted on the following URI:

Database URI: `postgres://postgres:password@database-2.cth5yqccqcot.us-east-1.rds.amazonaws.com:5432/postgres`

You can connect to the database using the provided URI and perform database operations for the Udagram application.

## AWS Elastic Beanstalk

The application server is deployed on AWS Elastic Beanstalk, a fully managed service for deploying and scaling web applications. Elastic Beanstalk simplifies the deployment process by automatically provisioning resources, such as EC2 instances and load balancers, to run and manage the application.

The Udagram Full-Stack application is built, archived, and uploaded to an S3 bucket. Elastic Beanstalk then extracts the application from the S3 bucket and deploys it on an endpoint. You can access the deployed application using the following Elastic Beanstalk URL:

EB URL: `http://udagram-api-dev-2.eba-3f9yaait.us-east-1.elasticbeanstalk.com/`

By accessing the provided EB URL, you can interact with the Udagram application and perform various actions, such as uploading and viewing images.

## AWS S3 Bucket

The frontend application of Udagram Full-Stack is deployed using AWS S3 Bucket. The bundled assets of the Angular application, including HTML, CSS, and JavaScript files, are uploaded to an S3 bucket. The bucket is configured to allow public read access, enabling end users to access the frontend application.

Bucket URL: `http://udagram01.s3-website-us-east-1.amazonaws.com/`

You can visit the provided Bucket URL to access the Udagram frontend application and use its features to share and view images.

## Getting Started

To set up and deploy the Udagram Full-Stack application, follow the steps below:

1. Connect to the AWS RDS Postgres database using the provided URI and perform any necessary database operations.
2. Access the application using the Elastic Beanstalk URL to interact with the deployed backend API.
3. Visit the S3 Bucket URL to access and use the frontend application.
