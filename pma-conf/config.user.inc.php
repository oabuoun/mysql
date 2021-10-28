<?php
/* Encrypted connection to DB */
$cfg['Servers'][$i]['ssl'] = true;
$cfg['Servers'][$i]['ssl_ca'] = '/cert/ca-cert.pem';
$cfg['Servers'][$i]['ssl_cert'] = '/cert/pma-cert.pem';
$cfg['Servers'][$i]['ssl_key'] = '/cert/pma-key.pem';
$cfg['Servers'][$i]['ssl_ciphers'] = 'DHE-RSA-AES256-SHA';
$cfg['ForceSSL'] = true;