## Static Website Hosting on AWS S3 with Terraform

This project provisions a **static website** on **Amazon S3** using **Terraform**, complete with:
- Public access configuration
- Bucket policy
- Website configuration (index page)
- Uploading of HTML content

---

## Project Structure

```

.
├── main.tf            # Terraform configuration for AWS resources
├── variables.tf       # Input variables like region and project name
├── outputs.tf         # Outputs like the website URL
├── index.html         # Your static website homepage
└── README.md          # This file

````

---

## Features

✅ Creates an S3 bucket  
✅ Enables website hosting  
✅ Configures bucket policy for public read access  
✅ Uploads a static `index.html` file  
✅ Outputs the live website URL after deployment  

---

## Prerequisites

Make sure you have the following installed:

- [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.0
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- An AWS account with appropriate permissions
- AWS credentials configured (`~/.aws/credentials` or environment variables)

---

## Setup Instructions

### 1. Clone the Repo

```bash
git clone https://github.com/your-username/static-website-terraform.git
cd static-website-terraform
````

### 2. Customize Variables

Edit the `variables.tf` file or use `terraform.tfvars`:

```hcl
project_name = "static-website"
region       = "eu-central-1"
```

Alternatively, override on CLI:

```bash
terraform apply -var="project_name=my-project" -var="region=us-east-1"
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Review the Plan

```bash
terraform plan
```

### 5. Apply the Configuration

```bash
terraform apply
```

Confirm with `yes` when prompted.

---

## Access Your Website

After a successful deployment, you’ll see an output like:

```
website_url = http://static-website-bucket-kennedy-2025.s3-website.eu-central-1.amazonaws.com
```

Click the URL or paste it into a browser to view the hosted website!

---

## Files Explained

| File           | Description                                                 |
| -------------- | ----------------------------------------------------------- |
| `main.tf`      | Defines all AWS resources: S3 bucket, policy, object upload |
| `variables.tf` | Declares variables for region and project name              |
| `outputs.tf`   | Outputs the website endpoint URL                            |
| `index.html`   | Sample homepage file served by S3                           |

---

## Key Concepts Used

* **S3 Static Website Hosting**
* **Bucket Policy vs ACL** (we use policy-based public access)
* **Terraform Resource Dependencies**
* **Modular Configuration using Variables and Outputs**

---

## Security Considerations

* Public read access is enabled by policy, **not ACLs**, to comply with [Amazon S3 Object Ownership changes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).
* Ensure you understand the implications of public access before deploying in production.

---

## What Can Be Done Next

* [ ] Add custom domain support via Route 53
* [ ] Integrate CloudFront for HTTPS + CDN
* [ ] Add CI/CD via GitHub Actions
* [ ] Add versioning and logging

---

## Feedback & Contributions

Pull requests and feedback are welcome! Open an issue or fork and submit a PR.

---

## License

This project is licensed under the [MIT License](LICENSE).

---
