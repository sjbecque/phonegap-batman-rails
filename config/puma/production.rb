directory '/var/www/prototype_api/current'
environment 'production'
daemonize true
stdout_redirect '/var/log/prototype_api/puma_out.log', '/var/log/prototype_api/puma_error.log', true
bind 'unix:///tmp/prototype_api.sock'
state_path '/var/run/prototype_api/puma.state'
pidfile '/var/run/prototype_api/puma.pid'