class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => running,
    enable => true,
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHuLykdVEhd9SnU5uFPIM2C7slWdNY4a83v1N0JTuAv5b+4/7zwW9iGZKj25UYvIa1y6lOY/ZCElaBzk/xzxG5OJmDCay73o5VNTmZCCegAHl09X2cGDTMz0SpxDV70olOCRcfOe6EfMATpVrh4w1BMAVHkSMCFsyMNZWJGzJ9EHnhz8V9yqDzXunMb5BlpruVEhTNmtW1WJ5MiNvp3oqlFXPsGWu6SQb5PiKXey4thK/6ig3682NCoopICyTQYENLbRZRk7D2eCpL6AM49jJT9p1hIg4VSf/W7Zd4ckCTE67kulW1RT67XGdlREUE4fSkrkCuyGtzYXjnSXsH7KZp',
  }
}
