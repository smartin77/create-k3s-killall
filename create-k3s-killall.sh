#!/bin/bash

# Read the contents of install.sh into a variable from k3s repository
main_script=$(curl -s https://raw.githubusercontent.com/k3s-io/k3s/master/install.sh)

# Find the create_killall() function and extract its contents starting from #!/bin/sh to EOF and write to new script k3s-killall.sh
echo "$(echo "$main_script" | sed -n '/create_killall() {/,/^EOF/{/^EOF/d;p}' | sed -n '/^#!\/bin\/sh/,$p')" > k3s-killall.sh

# Make the new script file executable
chmod +x k3s-killall.sh
