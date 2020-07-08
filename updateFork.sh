git remote add upstream https://github.com/indoorequal/mapbox-gl-indoorequal.git
git fetch upstream
git rebase upstream/master
git push origin master --force
