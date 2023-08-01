#!/bin/bash

# Create necessary directories if they don't exist
mkdir -p src/assets/images src/assets/styles src/components/Common src/components/Pages src/services src/utils

# Create App.js if it doesn't exist
if [ ! -f src/App.js ]; then
    touch src/App.js
fi

# Create index.js if it doesn't exist
if [ ! -f src/index.js ]; then
    touch src/index.js
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

# Output a message indicating the completion of the setup
echo "React.js project structure setup completed successfully."
