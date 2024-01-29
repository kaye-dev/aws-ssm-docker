#!/bin/bash

# Receive user input
echo "Enter the target instance ID:"
read instance_id
echo "Enter the AWS profile (press enter to skip):"
read aws_profile

# Construct the command
cmd="docker run --rm -it -v \"$HOME/.aws:/root/.aws\" aws-cli-with-session-manager-plugin ssm start-session --target \"$instance_id\""

# Add the profile to the command if inputted
if [[ -n $aws_profile ]]; then
    cmd="$cmd --profile \"$aws_profile\""
fi

# Execute the command
eval $cmd
