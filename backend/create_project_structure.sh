#!/bin/bash

# Create necessary directories if they don't exist
mkdir -p src/controllers src/models src/routes src/services src/utils tests

# Create app.js (or index.js) if it doesn't exist
if [ ! -f src/app.js ] && [ ! -f src/index.js ]; then
    touch src/app.js
fi

# Create a new README.md if it doesn't exist
if [ ! -f README.md ]; then
    touch README.md
fi

# Add content to README.md if it's empty
if [ ! -s README.md ]; then
    echo "# Your Project Name" > README.md
    echo "Write a brief description of your project here." >> README.md
fi

# Append .gitignore content if it's not present already
if ! grep -q "node_modules" .gitignore; then
    echo "node_modules/" >> .gitignore
fi

# Add scripts to package.json if they don't exist
if ! grep -q "\"start\":" package.json; then
    jq '.scripts += { "start": "node src/app.js" }' package.json > tmp.json && mv tmp.json package.json
fi

# Install necessary development dependencies for testing
npm install --save-dev mocha chai

# Output a message indicating the completion of the setup
echo "Project structure setup completed successfully."
