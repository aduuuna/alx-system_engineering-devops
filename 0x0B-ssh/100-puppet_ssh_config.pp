#!/usr/bin/env bash
#making changes to config file
file {'/etc/ssh/ssh_config':
  ensure => 'present',
},

file_line {'Turn off password auth':
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
  match => 'PasswordAuthnetication yes',
  replace => 'true',
}

file_line {'Use an I dentity file':
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/config',
  match => 'IdentityFile',
  ensure => 'true',
}
