#!/bin/bash



# Provide the username and password for authentication
#username = "yashmrsawant"
#password = "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"

git config credential.helper store
git config --global credential.username yashmrsawant
git credential approve <<EOF
protocol=https
host=github.com
username=yashmrsawant
password=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
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
username=yashmrsawant
password=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
EOF

echo "Repository update complete!"
