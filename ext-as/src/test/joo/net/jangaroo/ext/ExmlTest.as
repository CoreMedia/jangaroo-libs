package net.jangaroo.ext {
import flexunit.framework.TestCase;

/**
 * Test cases extracted from RFC 3986 - plus some more.
 */
public class ExmlTest extends TestCase {

  public function testApplyUndefined():void {
    var result:Object = Exml.apply({
      foo: "default"
    }, {
      foo: undefined
    });
    assertPropertyCount(1, result);
    assertEquals("default", result.foo);
  }

  public function testApplyNoMode():void {
    var result:Object = Exml.apply({
      a: "foo",
      b: "b"
    }, {
      a: "bar"
    });
    assertPropertyCount(2, result);
    assertEquals("bar", result.a);
    assertEquals("b", result.b);
  }

  public function testApplyAppendToArray():void {
    var result:Object = Exml.apply({
      a: ["foo"]
    }, {
      a: ["bar"],
      a$at: Exml.APPEND
    });
    assertPropertyCount(1, result);
    assertArrayEquals(["foo", "bar"], result.a);
  }

  public function testApplyOverrideAppend():void {
    var result:Object = Exml.apply({
      a: ["foo"],
      a$at: Exml.APPEND
    }, {
      a: ["bar"]
    });
    assertPropertyCount(1, result);
    assertArrayEquals(["bar"], result.a);
  }

  public function testApplyMergeAppend():void {
    var result:Object = Exml.apply({
      a: ["foo"],
      a$at: Exml.APPEND
    }, {
      a: ["bar"],
      a$at: Exml.APPEND
    });
    assertPropertyCount(2, result);
    assertArrayEquals(["foo", "bar"], result.a);
    assertEquals(0, result.a$at);
  }

  public function testApplyMergePrepend():void {
    var result:Object = Exml.apply({
      a: ["foo"],
      a$at: Exml.PREPEND
    }, {
      a: ["bar"],
      a$at: Exml.PREPEND
    });
    assertPropertyCount(2, result);
    var expected:Array = ["bar", "foo"];
    assertArrayEquals(expected, result.a);
    assertEquals(expected.length, result.a$at);
  }

  public function testApplyMergeInsert():void {
    var result:Object = Exml.apply({
      a: ["foo", "faz"],
      a$at: 2
    }, {
      a: ["bar", "baz"],
      a$at: 1
    });
    assertPropertyCount(2, result);
    assertArrayEquals(["bar", "foo", "faz", "baz"], result.a);
    assertEquals(2 + 1, result.a$at);
  }

  //noinspection JSMethodCanBeStatic
  private function assertArrayEquals(expected:Array, actual:Array):void {
    assertTrue("Array expected", actual instanceof Array);
    assertEquals("length mismatch", expected.length, actual.length);
    for (var i:int = 0; i < expected.length; i++) {
      assertEquals("Array item mismatch at position " + i, expected[i], actual[i]);
    }
  }

  private function assertPropertyCount(expected:int, object:Object):void {
    assertEquals("wrong number of properties", expected, countProperties(object));
  }

  //noinspection JSMethodCanBeStatic
  private function countProperties(object:Object):int {
    var result:int = 0;
    //noinspection JSUnusedLocalSymbols
    for (var property:String in object) {
      ++result;
    }
    return result;
  }

}
}