roles:
  - nginx.ng

nginx:
  ng:
    install_from_ppa: False
    from_source: False
    service:
      enable: True
    vhosts:
      managed:
        default:
          enabled: False
          config:

        jbio.conf:
          enabled: True
          config:
            - server:
              - server_name:
                - joebowman.io www.joebowman.io
              - listen:
                - 80
                - default_server
#              - return:
#                - 301
#                - https://joebowman.io$request_uri
#            - server:
#              - server_name:
#                - joebowman.io www.joebowman.io
#              - listen:
#                - 443
#                - ssl
              - root
                - /var/www/mkdocs
#              - ssl_certificate:
#                - /etc/ssl/certs/joebowman.io.crt
#              - ssl_certificate_key:
#                - /etc/ssl/certs/joebowman.io.key
#              - ssl_protocols:
#                - TLSv1 TLSv1.1 TLSv1.2
#              - ssl_ciphers:
#                - ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CH$
#              - ssl_prefer_server_ciphers:
#                - 'on'
#              - ssl_session_cache:
#                - shared:SSL:10m
#              - keepalive_timeout:
#                - 60
#              - add_header:
#                - Strict-Transport-Security
#                - "max-age=31536000"

              - access_log:
                - /var/log/nginx/joebowman.io-access.log
              - error_log:
                - /var/log/nginx/joebowman.io-error.log
              - gzip:
                - 'on'
              - gzip_min_length:
                - 1100
              - gzip_buffers:
                - 4
                - 32k
              - gzip_types:
                - text/plain
                - application/x-javascript
                - text/xml
                - text/css
              - gzip_vary:
                - 'on'
