package nativewrapper;
     
    public class NativeWrapper
    {
        static
        {
           System.loadLibrary("megalib");
        }
     
        native public static void printOne();
        native public static void printTwo();
    }
