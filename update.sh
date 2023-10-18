#!/bin/bash



# Provide the username and password for authentication
#username = "yashmrsawant"
#password = "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"

#git config credential.helper store
#git config --global credential.username yashmrsawant
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

echo "Repository update complete!"
