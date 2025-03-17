class linux_hardening::cron {
  service { 'crond':
    ensure => running,
    enable => true,
  }

  file { '/etc/crontab':
    ensure => file,
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
  }

  file { ['/etc/cron.hourly', '/etc/cron.daily', '/etc/cron.weekly', '/etc/cron.monthly', '/etc/cron.d']:
    ensure => directory,
    mode   => '0700',
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/cron.allow':
    ensure => file,
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
  }

  file { '/etc/cron.deny':
    ensure => file,
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
  }
}
