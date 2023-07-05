#!/bin/bash
echo "Current Ip" `curl --socks5 127.0.0.1:9050 http://checkip.amazonaws.com/`
(echo authenticate '"root"'; echo signal newnym; echo quit) | nc localhost 9051

