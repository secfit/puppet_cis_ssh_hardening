# Puppet Linux Hardening

This Puppet module applies the **CIS AlmaLinux 8 SSH Hardening Benchmark (v3.0)**. It includes configurations for SSH security, cron job management, PAM settings, sudo policies, and password policies.

## Features

This module automatically configures the following aspects for SSH security compliance:

- **SSH Hardening**, `linux_hardening::ssh`: Ensures secure permissions and configurations for SSH.
- **Cron Security**, `linux_hardening::cron`: Restricts access to cron jobs.
- **Sudo Policy Enforcement**, `linux_hardening::sudo`: Ensures sudo is installed and configured securely.
- **PAM Configuration**, `linux_hardening::pam`: Enhances authentication security.
- **Password Policy Management** `linux_hardening::password_policy`: Enforces strong password policies.

## Requirements

- Puppet >= 8
- AlmaLinux 8 (or compatible OS)
- `augeas` installed on the target system

## Installation

To install and use this module:

1. Clone the repository to your Puppet module directory:
    ```bash
    git clone https://github.com/secfit/linux_hardening.git /etc/puppetlabs/code/environments/production/modules/linux_hardening
    ```

2. Validate the Puppet module:
    ```bash
    puppet parser validate /etc/puppetlabs/code/environments/production/modules/linux_hardening/manifests/init.pp
    ```

3. Include the module in your Puppet configuration (`/etc/puppetlabs/code/environments/production/manifests/site.pp`):
    ```puppet
    node default {
      include linux_hardening
    }
    ```
    
4. Apply the Puppet manifest :
    ```puppet
    puppet apply /etc/puppetlabs/code/environments/production/manifests/site.pp
    ```
    
5. Apply the configuration:
    ```bash
    puppet agent -t
    ```

## Class Reference

- `cis_ssh_hardening::permissions`: Configures file permissions for SSH files.
- `cis_ssh_hardening::sshd_config`: Configures SSHD settings in `/etc/ssh/sshd_config`.

## License

This module is licensed under the **MIT License**.
