# Ref: http://gist.github.com/293302
server DEPLOYMENT_CONFIG["virtual_server_name"], user: DEPLOYMENT_CONFIG["deploy_user"], roles: [:web, :app, :db]
set :deployment_path, DEPLOYMENT_CONFIG["virtual_deployment_path"]
set :deploy_to, "#{fetch(:applications_folder)}/#{fetch(:application)}/#{fetch(:deployment_path)}"

# Don't forget to make this repo on the server
set :repository_server_name, DEPLOYMENT_CONFIG["virtual_server_name"]
set :repo_url, "#{fetch(:deploy_user)}@#{fetch(:repository_server_name)}:/var/Repositories/Git/#{fetch(:application)}.git"
# Don't forget to make this branch in the repository
set :branch, DEPLOYMENT_CONFIG["virtual_repository_deployment_branch"]

set :rails_env, :production




# Deployment dependencies
# Ref: https://github.com/capistrano/capistrano/wiki/Capistrano-Tasks#deploycheck
#depend :remote, :writable, "#{fetch(:asset_vault_path)}/#{fetch(:application)}/Images/"
#depend :remote, :writable, "#{fetch(:asset_vault_path)}/#{fetch(:application)}/PDFs/"




namespace :deploy do
  desc "Synchronise assets"
  task :sync_assets do
    # Upload assets to the AssetsVault
    run_locally do
    	execute "rsync --verbose --stats --progress --compress --archive --partial --recursive --times --perms --links --delete --exclude '.*' --delete-excluded ~/Projects/Rails/#{fetch(:application)}/app/assets/images/ #{fetch(:deploy_user)}@#{DEPLOYMENT_CONFIG["virtual_server_name"]}:#{fetch(:asset_vault_path)}/#{fetch(:application)}/Images/"
    	execute "rsync --verbose --stats --progress --compress --archive --partial --recursive --times --perms --links --delete --exclude '.*' --delete-excluded ~/Projects/Rails/#{fetch(:application)}/app/assets/pdfs/ #{fetch(:deploy_user)}@#{DEPLOYMENT_CONFIG["virtual_server_name"]}:#{fetch(:asset_vault_path)}/#{fetch(:application)}/PDFs/"
    end

    # Copy assets from the AssetsVault to the shared assets path for the deployed application
    on roles(:app) do
      # Execute rsync to synchronise assets from the AssetsVault
      execute "rsync --verbose --stats --progress --compress --archive --partial --recursive --times --perms --links --delete --exclude '.*' --delete-excluded #{fetch(:asset_vault_path)}/#{fetch(:application)}/Images/ #{shared_path}/app/assets/images/"
      execute "rsync --verbose --stats --progress --compress --archive --partial --recursive --times --perms --links --delete --exclude '.*' --delete-excluded #{fetch(:asset_vault_path)}/#{fetch(:application)}/PDFs/ #{shared_path}/app/assets/pdfs/"
  	end
  end
end









# server-based syntax
# ======================
# Defines a single server with a list of roles and multiple properties.
# You can define all roles on a single server, or split them:

# server 'example.com', user: 'deploy', roles: %w{app db web}, my_property: :my_value
# server 'example.com', user: 'deploy', roles: %w{app web}, other_property: :other_value
# server 'db.example.com', user: 'deploy', roles: %w{db}



# role-based syntax
# ==================

# Defines a role with one or multiple servers. The primary server in each
# group is considered to be the first unless any  hosts have the primary
# property set. Specify the username and a domain or IP for the server.
# Don't use `:all`, it's a meta role.

# role :app, %w{deploy@example.com}, my_property: :my_value
# role :web, %w{user1@primary.com user2@additional.com}, other_property: :other_value
# role :db,  %w{deploy@example.com}



# Configuration
# =============
# You can set any configuration variable like in config/deploy.rb
# These variables are then only loaded and set in this stage.
# For available Capistrano configuration variables see the documentation page.
# http://capistranorb.com/documentation/getting-started/configuration/
# Feel free to add new variables to customise your setup.



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult the Net::SSH documentation.
# http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start
#
# Global options
# --------------
#  set :ssh_options, {
#    keys: %w(/home/rlisowski/.ssh/id_rsa),
#    forward_agent: false,
#    auth_methods: %w(password)
#  }
#
# The server-based syntax can be used to override options:
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
