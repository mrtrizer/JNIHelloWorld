package nativewrapper;

import nativewrapper.NativeWrapper;

public class Application {
	public static void main(String [] args) {
		System.out.println("Hello, World!");
		NativeWrapper wrapper = new NativeWrapper();
		wrapper.printOne();	
	}
}
