## Image Updater
Files used to ease updating the container images of all applications running on the system.

#### Usage
Manual updating:
Don't use with docker-compose create (equivalent to default docker-compose action without parameters)!!!
Pulls all specified images with the command docker-compose pull --parallel
After pulling restart all stacks and recreate the containers without stacks.
Now purge the unused images with "docker image prune"

Updating with Makefile:
execute: "make routineupdate"
purge unused: 