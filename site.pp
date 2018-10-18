node default {
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
