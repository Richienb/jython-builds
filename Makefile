make:
	SOURCE_2=./jython2/dist
	SOURCE_3=./jython3/dist
	BUILD_2=./build/2
	BUILD_3=./build/3
	git clone https://github.com/jythontools/jython.git jython2 && cd jython2 && ant installer && cd ..
	git clone https://github.com/jythontools/jython.git jython3 && cd jython3 && ant installer && cd ..
	java -jar $SOURCE_2/jython-standalone.jar ci/getver.py |& tee $SOURCE_2/info.txt
	java -jar $SOURCE_3/jython-standalone.jar ci/getver.py |& tee $SOURCE_3/info.txt
	cd $BUILD_2
	cp $SOURCE_2/jython-standalone.jar standalone.jar
	java -jar $SORUCE_2/jython-installer.jar --silent --directory minimal --type minimum --include mod --verbose
	tar -zcvf minimal.tar.gz minimal/
	java -jar $SOURCE_2/jython-installer.jar --silent --directory standard --type minimum --include mod ensurepip --verbose
	tar -zcvf standard.tar.gz standard/
	cd $BUILD_3
	cp $SOURCE_3/jython-standalone.jar standalone.jar
	java -jar $SOURCE_3/jython-installer.jar --silent --directory minimal --type minimum --include mod --verbose
	tar -zcvf minimal.tar.gz minimal/
	java -jar $SOURCE_3/jython-installer.jar --silent --directory standard --type minimum --include mod ensurepip --verbose
	tar -zcvf standard.tar.gz standard/
