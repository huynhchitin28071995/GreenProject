# config valid for current version and patch releases of Capistrano
lock '~> 3.16.0'
set :rbenv_ruby, '3.0.0'
set :repo_url, 'git@github.com:huynhchitin28071995/cho_thuoc.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :user, 'ubuntu'
set :deploy_to, "/home/#{fetch(:user)}/projects/#{fetch(:application)}"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
set :pty, false

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml config/credentials.yml.enc config/sidekiq.yml .env}

# Default value for linked_dirs is []
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets public/system public/packs node_modules tmp/sidekiq}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
set :keep_releases, 3

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

set :upstart_service_name, 'sidekiq-manager'

set :stage, :production
set :states, [:staging, :production]
set :default_stage, :staging
set :rails_env, :production

set :puma_state, "#{shared_path}/tmp/pids/puma.state"
set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"

set :puma_access_log, "#{shared_path}/log/puma.access.log"
set :puma_error_log, "#{shared_path}/log/puma.error.log"

set :ssh_option, {forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub)}
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true
set :format, :pretty
set :log_level, :debug
# set sitemap_roles, :web