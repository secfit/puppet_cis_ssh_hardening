class cis_ssh_hardening::sshd_config {
  # Ensure SSHD config is present
  file { '/etc/ssh/sshd_config':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => template('cis_ssh_hardening/sshd_config.erb'),
  }

  # Ensure banner is configured
  file { '/etc/issue.net':
    ensure  => file,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => file('cis_ssh_hardening/ssh_banner.txt'),
  }
}
