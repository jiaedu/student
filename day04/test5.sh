#!/bin/bash
expect <<EOF
spawn fdisk $1
expect '):' { send "n\n" }
expect '):' { send "\n" }
expect '):' { send "\n" }
expect '):' { send "+2G\n" }
expect '):' { send "n\n" }
expect '):' { send "\n" }
expect '):' { send "\n" }
expect '):' { send "+2G\n" }
spawn fdisk $2
expect '):' { send "n\n" }
expect '):' { send "\n" }
expect '):' { send "\n" }
expect '):' { send "+2G\n" }
expect '):' { send "n\n" }
expect '):' { send "\n" }
expect '):' { send "\n" }
expect '):' { send "+2G\n" }
expect '):' { send "w\n" }
expect '):' { send "end\n" }
