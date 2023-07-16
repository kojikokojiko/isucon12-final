#!/bin/bash

go build -o isuconquest main.go admin.go
sudo systemctl restart isuconquest.go.service