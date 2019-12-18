This is the command executed to verify if this step was ok:

```
function ssh() {
  /usr/bin/ssh -oBatchMode=yes -o TCPKeepAlive=yes -o ServerAliveInterval=30 -o ServerAliveCountMax=30 -o ConnectTim
eout=30 -o ConnectionAttempts=30 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=error $@
}
function scp() {
  /usr/bin/scp -oBatchMode=yes -o TCPKeepAlive=yes -o ServerAliveInterval=30 -o ServerAliveCountMax=30 -o ConnectTim
eout=30 -o ConnectionAttempts=30 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=error $@
}
ssh -o strictHostKeyChecking=no node01 pxctl volume inspect user_volume --json | jq '.[].spec.ha_level' | grep 2 &&
ssh -o strictHostKeyChecking=no node01 pxctl volume list | grep user_volume | awk '{print $3,$4}' | grep "2 GiB" &&
echo "done"
```{{execute}}
