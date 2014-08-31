##!/bin/sh -e

apt_log_dir=/var/log/apt

(
cat $apt_log_dir/history.log
zcat $apt_log_dir/history*gz
) |
grep -o "apt-get install .*" |
sort -fu
