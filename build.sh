#!bash

# Build a maven package of nodejs

# Make the rest of the build contextual
cd $(cd $(dirname $0) ; pwd)

# Make the maven resource directory
mkdir -p src/main/resources

# Download from nodejs website
curl -sL https://nodejs.org/dist/v10.8.0/node-v10.8.0-linux-x64.tar.xz \
     -o src/main/resources/node-v10.8.0-linux-x64.tar.xz

# Make the mvn artifact
# -- replace package with `install` or `deploy`
# -- or `releaser:release` depending on your build
mvn package

# End
