node default {

  ensure_packages(['MySQL-python','pyOpenSSL','python-ldap','python-memcached','python-psycopg2','python-zope-interface','python-tzlocal','python-sqlite3dbm', 'dejavu-fonts-common', 'dejavu-sans-fonts', 'python-cairocffi','python2-crypto','nginx'])

  include ::nginx

  selinux::boolean{ 'httpd_can_network_connect':
    ensure => 'on',
  }

  selinux::boolean{ 'httpd_setrlimit':
    ensure => 'on',
  }

  selinux::port{ 'allow-http-redirect-port':
      seltype  => 'http_port_t',
      protocol => 'tcp',
      port     => lookup('graphite::gr_web_server_port'),
  }

  include ::graphite

}
