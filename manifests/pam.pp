class linux_hardening::pam {
  file { '/etc/pam.d/su':
    ensure  => file,
    content => template('linux_hardening/files/su.erb'),
  }

  file { '/etc/security/faillock.conf':
    ensure  => file,
    content => "deny = 5\nunlock_time = 900",
  }
}
