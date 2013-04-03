#!/bin/zsh

function __cpuload() {
    print "${$(uptime)#*average: }"
}

__cpuload
