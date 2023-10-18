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
