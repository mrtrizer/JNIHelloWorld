package nativewrapper;

import nativewrapper.NativeWrapper;

public class Application {
	public static void main(String [] args) {
		System.out.println("Hello, Java World!");
		NativeWrapper wrapper = new NativeWrapper();
		wrapper.printHello();	
	}
}
