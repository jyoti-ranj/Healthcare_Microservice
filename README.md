# Healthcare App

This is a healthcare application that provides patient management and appointment scheduling services. The application is designed using a microservices architecture, with each service containerized using Docker and deployed in the cloud using Terraform.

## Features

- **Patient Management Service**: Allows users to create, read, update, and delete patient records.
- **Appointment Service**: Manages appointments between patients and healthcare providers.
- **Dockerization**: Each service is containerized with Docker, enabling easy deployment and scalability.
- **Infrastructure as Code**: Terraform is used to provision and manage cloud infrastructure, including S3 buckets for storage.

## Technologies Used

- **Frontend**: HTML, CSS, JavaScript (React.js)
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **Containerization**: Docker
- **Infrastructure**: Terraform, AWS

## Getting Started

### Prerequisites

- Install [Docker](https://www.docker.com/get-started)
- Install [Terraform](https://www.terraform.io/downloads.html)
- Install [AWS CLI](https://aws.amazon.com/cli/)

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/jyoti-ranj/healthcare-app.git
   cd healthcare-app

2. Navigate to the infrastructure directory and run the following commands to initialize Terraform:
   cd infrastructure
   terraform init
   terraform plan
   terraform apply
3. Build and run the Docker containers for both services:
   cd patient-service
   docker build -t patient-service .
   docker run -p 3000:3000 patient-service

  cd ../appointment-service
  docker build -t appointment-service .
  docker run -p 3001:3001 appointment-service

4. Access the services via:

Patient Service: http://localhost:3000
Appointment Service: http://localhost:3001
Usage
After setting up the application, you can manage patients and appointments via the respective endpoints. Ensure that you have the necessary AWS permissions set up for the application to interact with AWS services.

Contributing
Contributions are welcome! Please open an issue or submit a pull request for any suggestions or improvements.

License
This project is licensed under the MIT License - see the LICENSE file for details.


