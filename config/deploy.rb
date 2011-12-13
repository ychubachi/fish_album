set :application, "fish_album"
set :repository,  "git@github.com:ychubachi/fish_album.git"
set :deploy_to, "/home/rails/fish_album"
set :use_sudo, false

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "fish.chubachi.net" # Your HTTP server, Apache/etc
role :app, "fish.chubachi.net" # This may be the same as your `Web` server
role :db,  "fish.chubachi.net", :primary => true # This is where Rails migrations will run

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

namespace :deploy do
  desc <<-DESC
    Creates synlinks for this application.
  DESC
  task :mylinks, :roles => :app do
    # DB
    src = File.join(deploy_to, 'shared', 'db', 'production.sqlite3')
    dst = File.join(current_path,'db')
    run "ln -s #{src} #{dst}"
    # Phots
    src = File.join(deploy_to, 'shared', 'uploads')
    dst = File.join(current_path,'public')
    run "ln -s #{src} #{dst}"
  end

  desc <<-DESC
    Deploy everything. This will work similarly to the 'migrations' task, 
    but will create the application symlinks.
  DESC
  task :all do
    set :migrate_target, :latest
    update_code
    symlink
    mylinks
    migrate
    restart
  end
end
