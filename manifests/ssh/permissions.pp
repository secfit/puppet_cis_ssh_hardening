class linux_hardening::ssh::permissions {
  file { '/etc/ssh/sshd_config':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
  }

  file { '/etc/ssh':
    ensure  => directory,
    mode    => '0700',
    owner   => 'root',
    group   => 'root',
  }
}
