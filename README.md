This project is a simple example of using JNI. To build package you need install jdk and g++ first.
Paths to java, javah, javac and g++ have to be in your PATH variable.
Also you have to set JDK_PATH to point on jdk.
For example:

	env JDK_PATH="/usr/lib/jvm/java-7-openjdk-amd64" make

Use run.sh to run example after build. 
The run script consists of one command:
	
	java -Djava.library.path=bin/ -jar bin/nativewrapper.jar

