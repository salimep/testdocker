#!/bin/bash
for mnt in "$@"; do
    echo "$mnt '*' (rw,sync,insecure,fsid=0,no_subtree_check,no_root_squash)" >> /etc/exports
done



exportfs -a
rpcbind
rpc.statd
rpc.nfsd
exec rpc.mountd --foreground
#systemctl enable nfs.service
#systemctl start nfs
