# monitoring-allinone-puppet

 
    # Install base tools
    sudo yum install nano git -y
    
    # Download repo
    sudo git clone https://github.com/yesoreyeram/monitoring-allinone-puppet.git /etc/puppet 
    
    # Install Puppet and supporting tools
    /etc/puppet/scripts/install-puppet.sh
    
    # Configure Puppet modules and gems
    /etc/puppet/scripts/configure-puppet.sh
    
    # Puppet apply 
    /etc/puppet/scripts/run.sh


