# EC2 Instance

Deployed a simple static website to an AWS EC2 Ubuntu server and pointed a custom domain to it.

## Summary

- Launched an **Ubuntu Server** EC2 instance (t3.micro).
- Opened inbound ports **22 (SSH)**, **80 (HTTP)** and **443 (HTTPS)** in the instance security group.
- Connected via SSH using a key pair, installed **Nginx**, and deployed a simple `index.html` to the web root.
 - Configured DNS in Amazon Route 53 and pointed my Namecheap domain so the site is accessible at **[jstn9.me](https://jstn9.me)**.

- Installed an SSL/TLS certificate (Let's Encrypt) and configured Nginx for HTTPS.

This project is part of [roadmap.sh](https://roadmap.sh/projects/ec2-instance) DevOps projects.