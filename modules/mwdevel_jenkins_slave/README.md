jenkins_slave
====================

A puppet module to configure a jenkins slave node

## Usage

```
include jenkins_slave

or:

class { 'jenkins_slave':
        maven_servers_data => [ { id => 'server1', login => 'login1', pwd => 'pwd1' } ]
}

```

## Required puppet modules

https://github.com/cnaf/emi3-release  
https://forge.puppetlabs.com/puppetlabs/java
