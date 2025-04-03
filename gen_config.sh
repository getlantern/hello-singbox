#!/bin/bash

# Generate a configuration file for SingBox

cat <<EOF
{
  "log": {
    "level": "info",
    "output": "stdout"
  },
  "inbounds": [
    {
      "type": "http",
      "listen": "0.0.0.0",
      "listen_port": 8080
    }
  ],
  "outbounds": [
     ]
}
EOF
