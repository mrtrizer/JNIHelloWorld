all:bin/nativewrapper.jar
clean:
	rm bin/* -R

bin/nativewrapper/NativeWrapper.class:src/NativeWrapper.java
	javac -d bin/ src/*

bin/nativewrapper/Application.class:src/Application.java
	javac -d bin/ src/*

src_native/nativewrapper_NativeWrapper.h:bin/nativewrapper/NativeWrapper.class
	javah -classpath bin/ -o src_native/nativewrapper_NativeWrapper.h nativewrapper.NativeWrapper 

bin/megalib.o: src_native/nativewrapper_NativeWrapper.h src_native/nativewrapper.cpp
	g++ -c -o bin/megalib.o -fpic src_native/nativewrapper.cpp -I$(JDK_PATH)/include

bin/libmegalib.so: bin/megalib.o
	g++ -shared -o bin/libmegalib.so bin/megalib.o

bin/nativewrapper.jar:bin/libmegalib.so bin/nativewrapper/NativeWrapper.class bin/nativewrapper/Application.class
	jar cfe bin/nativewrapper.jar nativewrapper.Application -C bin/ nativewrapper
	chmod +x bin/nativewrapper.jar
