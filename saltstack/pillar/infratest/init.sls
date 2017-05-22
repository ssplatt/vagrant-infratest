infratest:
  enabled: true
  run_all: true
  file:
    '/etc/passwd':
      exists: true
      type: file
      mode: 0644
      user: root
      group: root
      contains: root
    '/etc/ssh/sshd_config':
      exists: true
      type: file
      mode: 0644
      user: root
      group: root
      contains: PermitRootLogin without-password
  package:
    'openssh-server':
      installed: true
      version: 1:6.7p1-5+deb8u1
    'exim4':
      installed: true
      version: 4.84
  process:
    'nginx':
      www-data:
        count: 4
      root:
        count: 1
    'sshd':
      root:
        count: 5
  service:
    'exim4':
      running: true
      enabled: true
    'ssh':
      running: true
      enabled: true
  socket:
    'tcp://22':
      listening: true
  systeminfo:
    type: linux
    distribution: debian
    release: '8.3'
    codename: jessie
  sysctl:
    'kernel.osrelease':
      value: 3.16.0-4-amd64
