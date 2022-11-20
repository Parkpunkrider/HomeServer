#Backs up old website data and repulls from github
cp -R web/<webserver-folder> backup/.
cd web/<webserver-folder>
git pull
