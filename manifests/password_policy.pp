class linux_hardening::password_policy {
  file { '/etc/security/pwquality.conf':
    ensure  => file,
    content => template('linux_hardening/file/pwquality.conf.erb'),
  }

  exec { 'set-password-policy':
    command => '/usr/bin/chage -M 90 -m 7 -W 7 root',
    unless  => '/usr/bin/chage -l root | grep "Maximum number of days" | grep 90',
  }

  file { '/etc/login.defs':
    ensure  => file,
    content => "PASS_MAX_DAYS 90\nPASS_MIN_DAYS 7\nPASS_WARN_AGE 7",
  }
}
