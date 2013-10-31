class { 'postgresql::globals':
  manage_package_repo => true,
  version             => '9.2',
}

class { 'postgresql::server':
  listen_addresses           => '*',
  manage_firewall            => true,
}

postgresql::server::db { 'dbname':
  user     => 'mydatabaseuser',
  password => postgresql_password('mydatabaseuser', 'mypassword'),
}

postgresql::server::pg_hba_rule { 'allow application network to access app database':
  description => "Open up postgresql for access from 200.1.2.0/24",
  type => 'host',
  database => 'dbname',
  user => 'mydatabaseuser',
  address => '10.0.0.0/8',
  auth_method => 'md5',
}