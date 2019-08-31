class role::ssh_client {
  host { '172.18.0.3':
    name => 'db.puppet.vm',
    ensure => 'present',
    ip => '172.18.0.3',
  }
  host { '172.18.0.2':
    name => 'web.puppet.vm',
    ensure => 'present',
    ip => '172.18.0.2',
  }
}
