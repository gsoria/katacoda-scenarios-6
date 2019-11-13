cat > /root/sc.yaml << EOF
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: mpx-sc
provisioner: kubernetes.io/portworx-volume
parameters:
  repl: "3"
  priority_io: "high"
---
apiVersion: storage.k8s.io/v1
kind: StorageClass
metadata:
  name: px-sc-shared
provisioner: kubernetes.io/portworx-volume
parameters:
  repl: "3"
  priority_io: "high"
  shared: "true"
EOF
kubectl create -f /root/sc.yaml
