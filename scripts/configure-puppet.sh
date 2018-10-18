#!/bin/bash

echo "Configuring Puppet";

mkdir -p /etc/puppet/{modules,site-modules,hieradata,.dev}/

/opt/puppetlabs/puppet/bin/bundle install --gemfile=/etc/puppet/Gemfile
/opt/puppetlabs/puppet/bin/r10k puppetfile install --puppetfile /etc/puppet/Puppetfile --moduledir /etc/puppet/modules

exit 0;
