class cis_ssh_hardening {
  include cis_ssh_hardening::permissions
  include cis_ssh_hardening::sshd_config
  include cis_ssh_hardening::crypto_policy
}
