#!/bin/bash
        /usr/sbin/useradd ansibletest
        echo "ansibletest        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/ansibletest
        /usr/bin/mkdir /home/ansibletest/.ssh
        /usr/bin/chown ansibletest:ansibletest /home/ansibletest/.ssh
        /usr/bin/chmod 700 /home/ansibletest/.ssh
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFKF3sVkNWLLDQplbPKBtBY0UQf0HP6jq2G4nmqMngEujvxs43ho8opbx2/XoTW//XsTLDYRNClIFLh9swN2g2Z31OfOQu2qQAeE4LrVQAM8YKbtsJxxngToL/HK4Fhx6VYySuwbGtx518WgwfRctzqO62KYPnS8v9ufrFiNVdXRUwbCWiYrDdY6h6C0RiDCMNMKpY05rmxYmHECY5LYk+HVsO7cogT/giRf/15eWI+JyGlu/JiAUuR4SybYvJg3U8nmf68ooQnot7DLV7Loc88/iq1AbE7n0bIo2HmCnwvlFzYewlvReG+Y8jA8NCnPCxHHqzMrtRlGh4I+sKKDmWG2OrhV1pyPZerhjLJwzkz4H/WW5FIwvUGiPCtkhSRrV3vFvTd7+FNLsVd8blAblrb8UBf34P3L4jXHksGjqAESz15oTK6wKO6AM/ofqkomwCIajjS67wcGmCSc08USz1gYMwr2hdDoFuqk9U20dVHJRfLo1zEvBuk+yXwEaFfHU= root@ip-172-31-7-106.us-east-2.compute.internal" >> /home/ansibletest/.ssh/authorized_keys
        /usr/bin/chmod 600 /home/ansibletest/.ssh/authorized_keys
        /usr/bin/chown ansibletest:ansibletest /home/ansibletest/.ssh/authorized_keys
