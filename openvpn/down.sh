#!/bin/bash

BR=$1
DEV=$2

/sbin/brctl delif $BR $DEV
/sbin/ifconfig $DEV down 
