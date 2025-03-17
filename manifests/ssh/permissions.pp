class linux_hardening::ssh::permissions {
  # Set permissions for /etc/ssh/sshd_config
  file { '/etc/ssh/sshd_config':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
  }

  # Ensure permissions on SSH private keys
  file { '/etc/ssh/ssh_host_*_key':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
  }

  # Ensure permissions on SSH public keys
  file { '/etc/ssh/ssh_host_*_key.pub':
    ensure  => file,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
  }

  # Set permissions for SSH config directory
  file { '/etc/ssh/sshd_config.d':
    ensure  => directory,
    mode    => '0700',
    owner   => 'root',
    group   => 'root',
  }
}
