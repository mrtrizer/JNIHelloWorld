all:bin/nativewrapper.jar
clean:
	rm bin/* -R

bin/nativewrapper/NativeWrapper.class:src/NativeWrapper.java
	javac -d bin/ src/*

bin/nativewrapper/Application.class:src/Application.java
	javac -d bin/ src/*

bin/nativewrapper.jar:bin/nativewrapper/NativeWrapper.class bin/nativewrapper/Application.class
	jar cfe bin/nativewrapper.jar nativewrapper.Application -C bin/ nativewrapper
