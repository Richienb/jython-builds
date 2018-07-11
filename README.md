# Jython Builds [![Build Status](https://travis-ci.com/Richienb/jython-builds.svg?branch=master)](https://travis-ci.com/Richienb/jython-builds)

Jython pre-built, ready for easy distribution and continuous integration

## Usage

### Travis CI
```yml
install:
  - curl -L -o NEWFILENAME https://raw.githubusercontent.com/Richienb/jython-builds/master/build/VERSION/FILE # Download the file
  - unzip NEWFILENAME # If downloading zip
```
