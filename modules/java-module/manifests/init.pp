class java-module{
	
	package { 'git':
  	ensure => 'installed',
	}
	
	package { 'ssh':
  	ensure => 'installed',
	}
	
	package { 'tree':
        ensure => 'installed',
        }

	package { 'htop':
        ensure => 'installed',
        }

	package { 'mysql-server':
        ensure => 'installed',
        }
	
	package { 'mysql-client':
        ensure => 'installed',
        }

	package { 'tomcat8':
        ensure => 'installed',
        }

	package { 'maven':
        ensure => 'installed',
        }


	service { 'mysql':
 	ensure => 'running',
  	enable => 'true',
	provider => systemd,
	}

	service { 'tomcat8':
 	ensure => 'running',
	enable => 'true',
        provider => systemd,
	}
}
