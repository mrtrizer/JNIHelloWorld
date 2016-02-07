package nativewrapper;
     
    public class NativeWrapper
    {
        static
        {
           System.loadLibrary("megalib");
        }
     
        native public static void printHello();
    }
