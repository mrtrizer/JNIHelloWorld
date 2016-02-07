#include "nativewrapper_NativeWrapper.h"
#include <iostream>

JNIEXPORT void JNICALL Java_nativewrapper_NativeWrapper_printHello (JNIEnv *, jclass) {
	  std:: cout << "Hello, C++ World!" << std::endl;
}
