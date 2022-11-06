listStacks="autoheal ddns gitea home-assistant homer-dash torrentstack hrt-cafe"
#listStacks="autoheal ddns gitea home-assistant homer-dash torrentstack hrt-cafe websitemirror" #including inactive stacks
#echo "Deactivating Stacks..,"
#for stack in $listStacks; do
#    docker-compose --verbose down $stack
#done
echo "Rebuilding Stacks..."
for stack in $listStacks; do
    docker-compose --verbose up $stack
done