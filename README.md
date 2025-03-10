# CIS SSH Hardening Puppet Module

This Puppet module applies the **CIS AlmaLinux 8 SSH Hardening Benchmark (v3.0)**. It ensures the proper configuration and permissions of SSH-related files, SSHD settings, and more.

## Overview

This module automatically configures the following aspects for SSH security compliance:

- **Permissions on SSH files**:
  - Ensures correct permissions for `/etc/ssh/sshd_config`, SSH private keys, and public keys.
  
- **SSHD Configuration**:
  - Configures key SSHD settings, including:
    - `PermitRootLogin`, `PasswordAuthentication`, `UsePAM`, `ClientAliveInterval`, etc.
    - Ensures strong cipher suites, MACs, and KexAlgorithms.
    - Configures login grace time, max retries, and max sessions.
  
- **Crypto Policy**:
  - Disables SSH crypto policies that are not compliant with CIS.

## Requirements

- Puppet >= 6.0
- AlmaLinux 8 (or compatible OS)
- `augeas` installed on the target system

## Installation

To install and use this module:

1. Clone the repository to your Puppet module directory:
    ```bash
    git clone https://github.com/your_username/cis_ssh_hardening.git /etc/puppetlabs/code/environments/production/modules/cis_ssh_hardening
    ```

2. Validate the Puppet module:
    ```bash
    puppet parser validate /etc/puppetlabs/code/environments/production/modules/cis_ssh_hardening/manifests/init.pp
    ```

3. Include the module in your Puppet configuration (`/etc/puppetlabs/code/environments/production/manifests/site.pp`):
    ```puppet
    node default {
      include cis_ssh_hardening
    }
    ```

4. Apply the configuration:
    ```bash
    puppet agent -t
    ```

## Class Reference

- `cis_ssh_hardening::permissions`: Configures file permissions for SSH files.
- `cis_ssh_hardening::sshd_config`: Configures SSHD settings in `/etc/ssh/sshd_config`.
- `cis_ssh_hardening::crypto_policy`: Disables SSH crypto policies.

## Files

- **/etc/ssh/sshd_config**: The SSHD configuration file.
- **/etc/ssh/ssh_host_*_key**: The SSH private host key files.
- **/etc/ssh/ssh_host_*_key.pub**: The SSH public host key files.
- **/etc/issue.net**: SSH login banner.

## License

This module is licensed under the **MIT License**.
