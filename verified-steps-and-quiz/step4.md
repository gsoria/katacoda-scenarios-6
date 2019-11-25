>>Configure PX under runC on node01<<

Use the below Install Flags:

-k etcd://${ETCD HOST IP}:{ETCD PORT} \
-s /dev/vdb

Reference: https://docs.portworx.com/install-with-other/docker/standalone/#step-2-configure-px-under-runc
