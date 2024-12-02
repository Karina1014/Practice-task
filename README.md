# Automated Deployment with Docker on EC2 🚀

This project automates the deployment of a static web page using **Docker**, **GitHub Actions**, and **AWS EC2**. Every time you push to the `main` branch, your page will be automatically updated on the EC2 server!

---

## 🔧 Tools Used

- **GitHub Actions**: Automates CI/CD
- **AWS EC2**: Server for hosting
- **Docker**: Containerizes the app
- **Nginx**: Serves the app

---

## 📋 Prerequisites

Before getting started, make sure you have the following:

1. An **AWS EC2** instance running.
2. The **SSH keys** to securely access your EC2 instance.
3. **Docker** installed on your EC2 server.
4. **GitHub Secrets** configured (explained below).

---

## Tools Used

This project utilizes a combination of tools and technologies to make everything smoother and more efficient:

- **GitHub Actions**: Automates the CI/CD workflow, allowing for continuous deployment without manual intervention.
- **AWS EC2**: The server where the application will be hosted.
- **Docker**: Containers the application for easier deployment and scalability.
- **Nginx**: Configured to efficiently serve the web page on the server.

---

## Prerequisites

Before getting started, make sure you have the following:

1. An **AWS** account with an EC2 instance set up to host the application.
2. The **SSH keys** needed to securely access your EC2 instance.
3. **Docker** installed and running on your EC2 server.
4. **GitHub Secrets** set up (explained below).

---

## Project Usage

### 1. Clone the Repository

First, clone the repository to your local machine:

```bash
git clone https://github.com/Karina1014/Practice-task.git
```

## 2. Connection
1. Create an EC2 instance in your AWS account.
2. Generate an SSH key from AWS to connect securely.

## 3. Deploy
1. Add your SSH keys to **GitHub Secrets** (use `EC2_SERVER` for the host and `SERVER_KEY` for the key).
2. Each time you create a new EC2 instance, update the `EC2_SERVER` in your GitHub secrets with the public IP of the new instance.
3. Push to the `main` branch to trigger **GitHub Actions** and deploy your project automatically to your EC2.
## 🎨 Final Look
![image](https://github.com/user-attachments/assets/eada2239-aaa1-400e-b680-1ddd408848a9)

![image](https://github.com/user-attachments/assets/1ab8b68c-e790-4fd8-9b9b-a37101d309d4)

