PXCTL STATUS


>>Q1: How many storage nodes are part of the cluster?<< 
=== 3

Hint: Check for Storage Nodes using pxctl status command.
`ssh -o strictHostKeyChecking=no node01 pxctl status`{{execute}}


>>Q2: What is the scheduler used in this environment? << 
(*) kubernetes
() docker swarm
() DCOS

Hint:
`ssh -o strictHostKeyChecking=no node01 pxctl status | grep -i  scheduler`{{execute}}


>>Q3: What is the name of the Portworx cluster installed in this environment?<< 
=== px-demo


>>Q4: What is # of the Pool created in node01  << 
() Pool 1
(*) Pool 0
() Pool 2
() Pool 4


>>Q5: which of the following is not a valid storage node in this Portworx cluster? << 
() node01
(*) master
() node03
() node02