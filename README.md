# 🌐 Azure Terraform Modules
This repository contains **modular Terraform code** for deploying and managing **Azure resources**.
It is designed to be **scalable, reusable, and environment-agnostic**, making it easy to provision infrastructure for **Dev, Preprod, and Prod** environments.
---
## 📂 Repository Structure

```
terraform/
 ├── Parent/
 │   ├── dev/
 │   │   ├── main.tf
 │   │   ├── provider.tf
 │   │   ├── variables.tf
 │   │   └── terraform.tfvars
 │   ├── preprod/
 │   └── prod/
 └── child/
     ├── resource_group/
     │   ├── main.tf
     │   └── variables.tf
     ├── virtual_network/
     ├── subnet/
     ├── network_security_group/
     ├── storage_account/
     ├── key_vault/
     ├── aks_cluster/
     ├── app_service/
     ├── sql_server/
     ├── sql_database/
     ├── container_registry/
     ├── virtual_machine/
     └── ...
```

🚀 How to Use

1. **Clone the repository**

   ```
   git clone https://github.com/<your-username>/azure-terraform-modules.git
   cd azure-terraform-modules/terraform
   ```

2. **Initialize Terraform**

   ```
   terraform init
   ```

3. **Validate configuration**

   ```
   terraform validate
   ```

4. **Plan resources**

   ```
   terraform plan -var-file=Parent/dev/terraform.tfvars
   ```

5. **Apply resources**

   ```
   terraform apply -var-file=Parent/dev/terraform.tfvars
   ```

6. **Destroy resources (if needed)**

   ```
   terraform destroy -var-file=Parent/dev/terraform.tfvars
   ```

---

## 🏗️ Features

* ✅ **Modular structure** – Each Azure service is managed as an individual module.
* ✅ **Environment separation** – Dedicated folders for Dev, Preprod, and Prod.
* ✅ **Customizable** – Variables and tfvars for easy configuration.
* ✅ **Scalable** – Easily extendable by adding new modules under `child/`.
* ✅ **Best practices** – Clean separation of `main.tf`, `variables.tf`, and `provider.tf`.

---

## 📖 Notes

* Follow **Azure naming rules** (lowercase only for some resources like Storage, ACR).
* Use **environment-specific `tfvars`** for better maintainability.
* This repo is intended as a **starting point** – customize it as per your organization’s standards.

---

## 📚 References

* [Terraform – Azure Provider](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
* [Azure Resource Naming Guidelines](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming)
* [Terraform CLI Commands](https://developer.hashicorp.com/terraform/cli)

