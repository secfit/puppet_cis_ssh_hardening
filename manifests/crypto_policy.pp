class cis_ssh_hardening::crypto_policy {
  # Ensure crypto policy is not set
  file { '/etc/ssh/sshd_config':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => epp('cis_ssh_hardening/sshd_config_no_crypto_policy.epp'),
  }
}
