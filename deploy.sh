RAILS_ENV=production

cd /home/yc/work/fish_album
git checkout work
git add .
git commit -a -m 'Deploy'
git checkout master
git merge work
git push
git checkout work
# Deploy
# cd /home/rails/fish_album
# git pull
# rake db:migrate
# rake assets:precompile
# touch tmp/restart.txt
# cd /home/yc/work/fish_album
cap deploy:all
