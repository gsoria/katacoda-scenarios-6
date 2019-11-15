if [[ $(docker container inspect etcd | grep -i hostport| grep  -q 4001) ]]; then
    echo "done"
else
    echo "no containers found"
fi
