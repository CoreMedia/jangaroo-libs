package joo {

/**
 * The Jangaroo Runtime API version (increased only on incompatible compiler-runtime contract changes).
 * @return the Jangaroo Runtime API version.
 */
[Native]
[Deprecated(since="4.1.2", replacement="none")]
public native function get runtimeApiVersion():String;

}
