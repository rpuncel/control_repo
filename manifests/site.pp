node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
  file {'/root/README':
    owner => 'root',
  }
}
node 'minetest.puppet.vm' {
  include role::minecraft_server
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}
node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
