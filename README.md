# Jython Builds [![Build Status](https://travis-ci.com/Richienb/jython-builds.svg?branch=master)](https://travis-ci.com/Richienb/jython-builds)

Jython 2 and 3 pre-built, ready for easy distribution and continuous integration

## Usage

### Travis CI
```yml
install:
  # Change NEWFILENAME, VERSION and FILE to your liking
  - curl -L -o NEWFILENAME https://raw.githubusercontent.com/Richienb/jython-builds/master/build/VERSION/FILE # Download the zip or jar file
  - sudo tar xjf NEWFILENAME.tar.bz2 --directory / # Unzip if the downloaded file was a zip
```

Other methods of distribution **are** supported. You can also [download](https://github.com/Richienb/jython-builds/tree/master/build) the `.tar.gz` files.

## Generate the builds yourself

### You will need
- [Makefile](https://www.gnu.org/software/make/manual/make.html#Introduction)
- [Tar](https://www.gnu.org/software/tar/manual/html_node/What-tar-Does.html#SEC4)
- Shell environment ([Linux](https://www.linux.com/what-is-linux) or [Git](https://git-scm.com) on any OS)
- [Git](https://git-scm.com)
- [Java JDK 8+](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

### Script
```sh
$ git clone https://github.com/Richienb/jython-builds.git
$ cd jython-builds
$ make
```
