server '3.17.28.165', user: 'ubuntu', port: 22, roles: %i[web app db main], primary: true
set :branch, 'thanh'
set :application, 'cho-thuoc'
namespace :sidekiq do
  task :quitet do
    on roles(:app) do
    puts capture("prep -f 'sidekiq (.*) #{fetch(:application)}' | xagrs kill -USR1")
    end
  end

  task :restart do
    on roles(:app) do
      with rails_env: :production do
      sudo "restart #{fetch(:upstart_service_name)}"
      end
    end
  end
end