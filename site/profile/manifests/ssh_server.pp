class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDpShkD/rzSLkcPi5YzP09N+1FJh06X8ObJuPVjqurqHSU/NGCRfVLnq30hg9qmwdJgEeB/taG3DLAgkMbXZOOyPKbHsPoKxwr64DV5QQEvPqF6EnPMVViyPxnS9IBC1LJwLr2paQK69HMuYr+8FhCc6VTtjhMuDcf2wqmxUpmw6/DWv7GdkQaq/cB9DFsjMISKdGlf9vNIDDkVQwA34GzrCLdvTJ3W3kXgTMeROt04m+n1+g8mC5i1say1C3hbO74qrCv1L68O2NSrLPVFsprDUd/Bh7HSlnguVnEC32CfsJnNYOcZ4L/wos10wV9ERnizzIk4TjnCzzA6k85Zb7cN',
}
