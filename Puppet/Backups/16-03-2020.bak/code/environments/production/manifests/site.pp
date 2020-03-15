node 'default'{
	package { 'vim': 
	ensure => present }
	package { 'git':
	ensure => present }
	include sudo;
	include ntp_service
	
}
node 'db-f.foo.org.nz' {
	include mariadb
}
