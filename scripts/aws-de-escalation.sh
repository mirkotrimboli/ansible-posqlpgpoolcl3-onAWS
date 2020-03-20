#!/bin/bash

INTERFACEATTACHID=`/usr/local/bin/aws ec2 describe-network-interfaces --network-interface-ids eni-08770b5291f7eee93 |grep AttachmentId |awk '{print $2}'|/bin/rev|/bin/cut -c 2-|/bin/rev|cut -d '"' -f 2`
#echo $INTERFACEATTACHID

`/usr/local/bin/aws ec2 detach-network-interface --attachment-id $INTERFACEATTACHID`