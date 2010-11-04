package net.jangaroo.net {
import flexunit.framework.TestCase;

/**
 * Test cases extracted from RFC 3986 - plus some more.
 */
public class URITest extends TestCase {

  private static const RFC_BASE_URI:String = "http://a/b/c/d;p?q";

  private static const RELATIVIZE_TEST_CASES:Array = [
    [RFC_BASE_URI, "g:h", "g:h"],
    [RFC_BASE_URI, "../../b", "http://a/b"],
    [RFC_BASE_URI, "g", "http://a/b/c/g"],
    [RFC_BASE_URI, "g/", "http://a/b/c/g/"],
    [RFC_BASE_URI, "//g", "http://g"],
    [RFC_BASE_URI, "?y", "http://a/b/c/d;p?y"],
    [RFC_BASE_URI, "g?y", "http://a/b/c/g?y"],
    [RFC_BASE_URI, "#s", "http://a/b/c/d;p?q#s"],
    [RFC_BASE_URI, "g#s", "http://a/b/c/g#s"],
    [RFC_BASE_URI, "g?y#s", "http://a/b/c/g?y#s"],
    [RFC_BASE_URI, ";x", "http://a/b/c/;x"],
    [RFC_BASE_URI, "g;x", "http://a/b/c/g;x"],
    [RFC_BASE_URI, "g;x?y#s", "http://a/b/c/g;x?y#s"],
    [RFC_BASE_URI, "?q", "http://a/b/c/d;p?q"],
    // also valid: "", we return this because if Netscape Bug (see UriUtils comment)
    [RFC_BASE_URI, ".", "http://a/b/c/"],
    // also valid: "./"
    [RFC_BASE_URI, "../g", "http://a/b/g"],
    [RFC_BASE_URI, "..", "http://a/b/"],
    // also valid: "../"
    [RFC_BASE_URI, "../..", "http://a/"],
    // also valid: "../../"
    [RFC_BASE_URI, "../../g", "http://a/g"],
    // also valid (and shorter): "/g", but we want the relative path one (URL path rewriting in SAP Portal!!)

    [RFC_BASE_URI, "g."   , "http://a/b/c/g." ],
    [RFC_BASE_URI, ".g"   , "http://a/b/c/.g" ],
    [RFC_BASE_URI, "g.."  , "http://a/b/c/g.."],
    [RFC_BASE_URI, "..g"  , "http://a/b/c/..g"],
    [RFC_BASE_URI,"http:g", "http:g"          ],

    ["http://a/b/c/g", "g/h", "http://a/b/c/g/h"],
    ["http://a/b/c/g", "g/h/i", "http://a/b/c/g/h/i"],
    ["http://a/b/c/g", "g", "http://a/b/c/g"],
    ["http://a/b/c/g/", ".", "http://a/b/c/g/"],

    ["jangaroo:abcdefg/ehi?k#m",           "../x/y?z#f",  "jangaroo:/x/y?z#f" ],
    ["jangaroo:abcdefg/ehi?k#m",           "x/y?z#f",     "jangaroo:abcdefg/x/y?z#f" ],
    ["jangaroo:abcdefg/ehi?k#m",           "y?z#f",       "jangaroo:abcdefg/y?z#f" ],
    ["jangaroo:abcdefg/ehi?k#m",           "../y?z#f",    "jangaroo:/y?z#f" ],
    ["jangaroo:abcdefg/ehi?k#m",           "../y?z#f",    "jangaroo:/y?z#f" ]
  ];

  private static const RESOLVE_TEST_CASES:Array = [
    [RFC_BASE_URI, "./g", "http://a/b/c/g"],
    [RFC_BASE_URI, "/g", "http://a/g"],
    [RFC_BASE_URI, "//g", "http://g"],
    [RFC_BASE_URI, "", "http://a/b/c/d;p?q"],
    [RFC_BASE_URI, "./", "http://a/b/c/"],
    [RFC_BASE_URI, "../", "http://a/b/"],
    [RFC_BASE_URI, "../../", "http://a/"],

    [RFC_BASE_URI, "../../../g"    ,  "http://a/g"           ],
    [RFC_BASE_URI, "../../../../g" ,  "http://a/g"           ],
    [RFC_BASE_URI, "/./g"          ,  "http://a/g"           ],
    [RFC_BASE_URI, "/../g"         ,  "http://a/g"           ],
    [RFC_BASE_URI, "./../g"        ,  "http://a/b/g"         ],
    [RFC_BASE_URI, "./g/."         ,  "http://a/b/c/g/"      ],
    [RFC_BASE_URI, "g/./h"         ,  "http://a/b/c/g/h"     ],
    [RFC_BASE_URI, "g/../h"        ,  "http://a/b/c/h"       ],
    [RFC_BASE_URI, "g;x,1/./y"     ,  "http://a/b/c/g;x,1/y" ],
    [RFC_BASE_URI, "g;x,1/../y"    ,  "http://a/b/c/y"       ],
    [RFC_BASE_URI, "g?y/./x"       ,  "http://a/b/c/g?y/./x" ],
    [RFC_BASE_URI, "g?y/../x"      ,  "http://a/b/c/g?y/../x"],
    [RFC_BASE_URI, "g#s/./x"       ,  "http://a/b/c/g#s/./x" ],
    [RFC_BASE_URI, "g#s/../x"      ,  "http://a/b/c/g#s/../x"],

    ["http://a/b/c", "http://a/b/c/g#s/../x",  "http://a/b/c/g#s/../x"],
    ["http://a/b/c", "http://a/b/c/g#s/../x",  "http://a/b/c/g#s/../x"],
    ["http://a/b/c", "http://a/e/g",  "http://a/e/g"],
    ["http://a/b/c", "http://a/e/f/../g",  "http://a/e/g"],
    ["http://a/b/c", "//a/e/f/../g",  "http://a/e/g"],
    ["file:///b/c", "file:///e/f",  "file:/e/f"],
    ["file:///b/c", "file://a/e/f",  "file://a/e/f"],

    ["jangaroo:abcdefg/ehi?k#m", "./y?z#f",  "jangaroo:abcdefg/y?z#f" ],
    ["jangaroo:abcdefg/ehi?k#m", "../y?z#f",  "jangaroo:/y?z#f" ],

    ["jangaroo:abcdefg/ehi?k#m", "x/./y?z#f",  "jangaroo:abcdefg/x/y?z#f" ],
    ["jangaroo:abcdefg/ehi?k#m", "x/../y?z#f",  "jangaroo:abcdefg/y?z#f" ],
    ["jangaroo:abcdefg/ehi/?k#m", "x/../../y?z#f",  "jangaroo:abcdefg/y?z#f" ],
    ["jangaroo:abcdefg/ehi?k#m", "x/../../y?z#f",  "jangaroo:/y?z#f" ]
  ];

  private static function relativeUriDataProvider():Array {
    return RELATIVIZE_TEST_CASES;
  }

  public function testRelativize():void {
    dataDrivenTest(relativeUriDataProvider, testDataInjector, checkRelativize);
  }

  public function testResolve():void {
    dataDrivenTest(resolveUriDataProvider, testDataInjector, checkResolve);
  }

  public function testUriUtilsRelativize():void {
    dataDrivenTest(relativeUriDataProvider, testDataInjector, checkUriUtilsRelativize);
  }

  public function testUriUtilsResolve():void {
    dataDrivenTest(resolveUriDataProvider, testDataInjector, checkUriUtilsResolve);
  }

  private function dataDrivenTest(dataProvider:Function, injectorFactory:Function, checker:Function):void {
    const data:Array = dataProvider();
    const results:Array = data.map(injectorFactory(checker));
    const failed:Array = results.filter(function(result:*):* { return result; });
    if (failed.length > 0) {
      fail(failed.length + " tests failed: \n" + failed);
    }
  }

  private function testDataInjector(test:Function):Function {
    return function(row:Array):* {
      return test(row[0], row[1], row[2]);
    };
  }

  private function checkRelativize(base:String, expectedRelativized:String, reference:String):String {
    const baseUri:URI = URIUtils.parse(base);
    const referenceUri:URI = URIUtils.parse(reference);
    const actualRelativizedUri:URI = baseUri.relativize(referenceUri);
    const actualRelativized:String = actualRelativizedUri.toString();
    return check("relativize", base, reference, expectedRelativized, actualRelativized);
  }

  private function check(functionName:String , base:String, reference:String, expected:String, actual:String):String {
    return expected === actual
      ? null
      : functionName + "(" + base + ", " + reference + ")='" + actual + "', expected: '" + expected + "'";

  }

  private static function resolveUriDataProvider():Array {
    return RESOLVE_TEST_CASES.concat(RELATIVIZE_TEST_CASES);
  }

  public function checkResolve(base:String, reference:String, expectedResolved:String):String {
    const baseUri:URI = URIUtils.parse(base);
    const referenceUri:URI = URIUtils.parse(reference);
    const actualResolvedUri:URI = baseUri.resolve(referenceUri);
    const actualResolved:String = actualResolvedUri.toString();
    return check("resolve", base, reference, expectedResolved, actualResolved);
  }

  public function checkUriUtilsRelativize(base:String, expectedRelativized:String, reference:String):String {
    const actualRelativized:String = URIUtils.relativize(base,reference);
    return check("UriUtils.relativize", base, reference, expectedRelativized, actualRelativized);
  }
  public function checkUriUtilsResolve(base:String, reference:String, expectedResolved:String):String {
    const actualResolved:String = URIUtils.resolve(base,reference);
    return check("UriUtils.resolve", base, reference, expectedResolved, actualResolved);
  }

}
}