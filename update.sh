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
