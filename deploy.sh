cd /home/yc/work/fish_album
git checkout work
rake assets:precompile
git add .
git commit -a -m 'Deploy'
git checkout master
git merge work
git push
git checkout work

