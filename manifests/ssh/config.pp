class linux_hardening::ssh::config {
# Ensure SSHD config is present
  file { '/etc/ssh/sshd_config':
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    content => template('linux_hardening/sshd_config.erb'),
    notify  => Service['sshd'],
  }

  service { 'sshd':
    ensure => running,
    enable => true,
  }
  
  # Ensure banner is configured
  file { '/etc/issue.net':
    ensure  => file,
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    content => file('linux_hardening/ssh_banner.txt'),
  }
}
