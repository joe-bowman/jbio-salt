roles:
  - timezone
  - ntp.ng
  - openssh
  - openssh.config

sshd_config:
  Port: 22
  # Pull ssh keys from LDAP
  KexAlgorithms: curve25519-sha256@libssh.org,ecdh-sha2-nistp521,ecdh-sha2-nistp384,ecdh-sha2-nistp256,diffie-hellman-group-exchange-sha256
  Ciphers: chacha20-poly1305@openssh.com,aes256-gcm@openssh.com,aes128-gcm@openssh.com,aes256-ctr,aes192-ctr,aes128-ctr
  MACs: hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,umac-128-etm@openssh.com,hmac-sha2-512,hmac-sha2-256,umac-128@openssh.com
  PermitRootLogin: no

ntp:
  ng:
    settings:
      ntpd: True
      ntp_conf:
        server:
          - pool.ntp.org
