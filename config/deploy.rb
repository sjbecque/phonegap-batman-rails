SSHKit.config.command_map[:rake] = "bundle exec rake"

set :application, 'prototype_api'
set :repo_url, 'https://github.com/coconut-ogd/phonegap-batman-rails.git'
set :bundle_flags, '--deployment'
set :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

set :deploy_to, '/var/www/prototype_api'
set :scm, :git
set :format, :pretty
set :log_level, :debug
# set :pty, true

set :linked_files, %w{config/database.yml config/environments/production.rb}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :keep_releases, 5

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end
  after :finishing, 'deploy:cleanup'
end
