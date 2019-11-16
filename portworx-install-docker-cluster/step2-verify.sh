# HOSTPORTOUTPUT=$(echo $(docker inspect $(docker ps | grep etcd | awk '{print $1}') | grep -i hostport| grep -oP '(?<="HostPort": ")(.*)(?=")'| sort --uniq))
# ECHOPORT=$(echo 4001)
# if [ "$HOSTPORTOUTPUT" == "$ECHOPORT" ]; then
#     echo "done"
# fi
echo "nodone"
