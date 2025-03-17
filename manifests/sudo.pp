class linux_hardening::sudo {
  package { 'sudo':
    ensure => installed,
  }

  file { '/etc/sudoers':
    ensure  => file,
    mode    => '0440',
    owner   => 'root',
    group   => 'root',
  }

  file { '/etc/sudoers.d':
    ensure  => directory,
    mode    => '0750',
    owner   => 'root',
    group   => 'root',
  }
}
