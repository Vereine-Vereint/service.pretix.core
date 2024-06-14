#!/bin/bash
SERVICE_NAME="lowercaseservicename"
SERVICE_VERSION="v0.1"

set -e

SERVICE_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
echo "[$SERVICE_NAME] $SERVICE_VERSION ($(git rev-parse --short HEAD))"
cd $SERVICE_DIR

# CORE
source ./core/core.sh


# VARIABLES
set -o allexport
# set variables for docker or other services here
set +o allexport

# COMMANDS

# This is an example command that prints a message from the first argument
# commands+=([example]="<msg>:Example command that prints <msg>")
# cmd_example() {
#   echo "Example: $1"
# }

# ATTACHMENTS

# Setup function that is called before the docker up command
# att_setup() {
#   echo "Setting up..."
# }

# Configure function that is called before the docker up, start and restart commands
# att_configure() {
#   echo "Configuring..."
# }

# MAIN
main "$@"
