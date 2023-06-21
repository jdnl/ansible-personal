#!/bin/bash

sites_to_block=(
  "4chan.org"
  "boards.4chan.org"
  "news.ycombinator.com"
  "slickdeals.net"
)

for each_site in ${sites_to_block[@]};
do
  if ! grep -q "${each_site}" /etc/hosts; then
    echo "127.0.0.1 ${each_site}" | tee -a /etc/hosts > /dev/null
  fi
done

