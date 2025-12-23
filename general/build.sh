#! /usr/bin/bash
echo "Removing previous build"
rm -rf dist
echo "Building the project"
npm run _build

# Copy public directory if it exists
if [ -d "public" ]; then
    echo "Copying public directory to dist"
    cp -r public/* dist/
fi

echo "Finished building the project"