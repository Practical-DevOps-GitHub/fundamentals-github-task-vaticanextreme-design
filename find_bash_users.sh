#!/bin/bash
# Script to find users with /bin/bash shell from a file named 'password'

# First, create a sample password file if it doesn't exist (copy from /etc/passwd)
if [ ! -f "password" ]; then
  echo "Creating sample password file from /etc/passwd..."
  sudo cp /etc/passwd password
fi

echo "Users with /bin/bash shell:"
grep '/bin/bash$' password | cut -d: -f1
