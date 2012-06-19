package flash.net {

/**
 * Preserves the class (type) of an object when the object is encoded in Action Message Format (AMF). When you encode an object into AMF, this function saves the alias for its class, so that you can recover the class when decoding the object. If the encoding context did not register an alias for an object's class, the object is encoded as an anonymous object. Similarly, if the decoding context does not have the same alias registered, an anonymous object is created for the decoded data.
 * <p>LocalConnection, ByteArray, SharedObject, NetConnection and NetStream are all examples of classes that encode objects in AMF.</p>
 * <p>The encoding and decoding contexts do not need to use the same class for an alias; they can intentionally change classes, provided that the destination class contains all of the members that the source class serializes.</p>
 * @param aliasName The alias to use.
 * @param classObject The class associated with the given alias.
 *
 * @throws TypeError If either parameter is <code>null</code>.
 *
 * @see ObjectEncoding
 *
 * @example This example uses the <code>registerClassAlias()</code> function to register an alias (<code>com.example.eg</code>) for the class ExampleClass. Because an alias is registered for the class, the object is able to be deserialized as an instance of ExampleClass, and the code outputs <code>true</code>. If the <code>registerClassAlias()</code> call were removed, the code would output <code>false</code>.
 * <listing>
 * package {
 *     import flash.display.Sprite;
 *     import flash.net.registerClassAlias;
 *     import flash.utils.ByteArray;
 *
 *     public class RegisterClassAliasExample extends Sprite {
 *         public function RegisterClassAliasExample() {
 *             registerClassAlias("com.example.eg", ExampleClass);
 *             var eg1:ExampleClass = new ExampleClass();
 *             var ba:ByteArray = new ByteArray();
 *             ba.writeObject(eg1);
 *             ba.position = 0;
 *             var eg2:* = ba.readObject();
 *             trace(eg2 is ExampleClass); // true
 *         }
 *     }
 * }
 *
 * class ExampleClass {}
 * </listing>
 */
public native function registerClassAlias(aliasName:String, classObject:Class):void;

}