#!/bin/bash



# Provide the username and password for authentication
username = 'yashmrsawant@gmail.com'
password = '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'

git config credential.helper store
git config --global credential.username $username
git credential approve <<EOF
protocol=https
host=github.com
username=$username
password=$password
EOF

# Update the repository with the provided credentials
git add --a 
git commit -m "Updating"
git push origin main

# Clear the stored credentials
git config --unset-all credential.username
git credential reject <<EOF
protocol=https
host=github.com
username=$username
password=$password
EOF

echo "Repository update complete!"
