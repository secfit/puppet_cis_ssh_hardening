class linux_hardening {
  include linux_hardening::cron
  include linux_hardening::ssh
  include linux_hardening::sudo
  include linux_hardening::pam
  include linux_hardening::password_policy
}
