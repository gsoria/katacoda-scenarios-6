>>An ETCD instance has already been created for you on the master node<<

Inspect the ETCD container on master.

Name of the docker container is 'etcd', exposed on host port '4001'. Make a note of the the IP and port for the subsequent steps.

`export IP=$(hostname -I | awk '{print $1}')`{{execute}}

`echo $IP`{{execute}}

This is the command executed to verify if this step was ok:

```
HOSTPORTOUTPUT=$(echo $(docker inspect $(docker ps | grep etcd | awk '{print $1}') | grep -i hostport| grep -oP '(?<="HostPort": ")(.*)(?=")'| sort --uniq))
ECHOPORT=$(echo 4001)
if [ "$HOSTPORTOUTPUT" == "$ECHOPORT" ]; then
    echo "done"
fi
```{{execute}}
