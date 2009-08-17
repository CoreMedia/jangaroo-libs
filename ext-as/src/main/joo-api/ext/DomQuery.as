package ext {
import js.Node;

/**
Provides high performance selector/xpath processing by compiling queries into reusable functions. New pseudo classes and matchers can be plugged. It works on HTML and XML documents (if a content node is passed in).
<p>
DomQuery supports most of the <a href="http://www.w3.org/TR/2005/WD-css3-selectors-20051215/#selectors">CSS3 selectors spec</a>, along with some custom selectors and basic XPath.</p>

<p>
All selectors, attribute filters and pseudos below can be combined infinitely in any order. For example "div.foo:nth-child(odd)-LBRAC-AT-foo=bar-RBRAC.bar:first" would be a perfectly valid selector. Node filters are processed in the order in which they appear, which allows you to optimize your queries for your document structure.
</p>
<h4>Element Selectors:</h4>
<ul class="list">
    <li> <b>*</b> any element</li>
    <li> <b>E</b> an element with the tag E</li>
    <li> <b>E F</b> All descendent elements of E that have the tag F</li>
    <li> <b>E > F</b> or <b>E/F</b> all direct children elements of E that have the tag F</li>
    <li> <b>E + F</b> all elements with the tag F that are immediately preceded by an element with the tag E</li>
    <li> <b>E ~ F</b> all elements with the tag F that are preceded by a sibling element with the tag E</li>
</ul>
<h4>Attribute Selectors:</h4>
<p>The use of &#64; and quotes are optional. For example, div[&#64;foo='bar'] is also a valid attribute selector.</p>
<ul class="list">
    <li> <b>E[foo]</b> has an attribute "foo"</li>
    <li> <b>E[foo=bar]</b> has an attribute "foo" that equals "bar"</li>
    <li> <b>E[foo^=bar]</b> has an attribute "foo" that starts with "bar"</li>
    <li> <b>E[foo$=bar]</b> has an attribute "foo" that ends with "bar"</li>
    <li> <b>E[foo*=bar]</b> has an attribute "foo" that contains the substring "bar"</li>
    <li> <b>E[foo%=2]</b> has an attribute "foo" that is evenly divisible by 2</li>
    <li> <b>E[foo!=bar]</b> has an attribute "foo" that does not equal "bar"</li>
</ul>
<h4>Pseudo Classes:</h4>
<ul class="list">
    <li> <b>E:first-child</b> E is the first child of its parent</li>
    <li> <b>E:last-child</b> E is the last child of its parent</li>
    <li> <b>E:nth-child(<i>n</i>)</b> E is the <i>n</i>th child of its parent (1 based as per the spec)</li>
    <li> <b>E:nth-child(odd)</b> E is an odd child of its parent</li>
    <li> <b>E:nth-child(even)</b> E is an even child of its parent</li>
    <li> <b>E:only-child</b> E is the only child of its parent</li>
    <li> <b>E:checked</b> E is an element that is has a checked attribute that is true (e.g. a radio or checkbox) </li>
    <li> <b>E:first</b> the first E in the resultset</li>
    <li> <b>E:last</b> the last E in the resultset</li>
    <li> <b>E:nth(<i>n</i>)</b> the <i>n</i>th E in the resultset (1 based)</li>
    <li> <b>E:odd</b> shortcut for :nth-child(odd)</li>
    <li> <b>E:even</b> shortcut for :nth-child(even)</li>
    <li> <b>E:contains(foo)</b> E's innerHTML contains the substring "foo"</li>
    <li> <b>E:nodeValue(foo)</b> E contains a textNode with a nodeValue that equals "foo"</li>
    <li> <b>E:not(S)</b> an E element that does not match simple selector S</li>
    <li> <b>E:has(S)</b> an E element that has a descendent that matches simple selector S</li>
    <li> <b>E:next(S)</b> an E element whose next sibling matches simple selector S</li>
    <li> <b>E:prev(S)</b> an E element whose previous sibling matches simple selector S</li>
</ul>
<h4>CSS Value Selectors:</h4>
<ul class="list">
    <li> <b>E{display=none}</b> css value "display" that equals "none"</li>
    <li> <b>E{display^=none}</b> css value "display" that starts with "none"</li>
    <li> <b>E{display$=none}</b> css value "display" that ends with "none"</li>
    <li> <b>E{display*=none}</b> css value "display" that contains the substring "none"</li>
    <li> <b>E{display%=2}</b> css value "display" that is evenly divisible by 2</li>
    <li> <b>E{display!=none}</b> css value "display" that does not equal "none"</li>
</ul>
*/
public class DomQuery {
/**
 * @singleton
 */
        public static native function getStyle(el, name) : void;
        /**
         * Compiles a selector/xpath query into a reusable function. The returned function
         * takes one parameter "root" (optional), which is the context node from where the query should start.
         * @param selector The selector/xpath query
         * @param type Either "select" (the default) or "simple" for a simple selector match
         * @return 
         */
        public static native function compile(selector : String, type : String = undefined) : Function;
        /**
         * Selects a group of elements.
         * @param selector The selector/xpath query (can be a comma separated list of selectors)
         * @param root The start of the query (defaults to document).
         * @return An Array of DOM elements which match the selector. If there are
         * no matches, and empty Array is returned.
         */
        public static native function select(selector : String, root : Node = undefined, type = undefined) : Array;
        /**
         * Selects a single element.
         * @param selector The selector/xpath query
         * @param root The start of the query (defaults to document).
         * @return The DOM element which matched the selector.
         */
        public static native function selectNode(selector : String, root : Node = undefined) : Element;
        /**
         * Selects the value of a node, optionally replacing null with the defaultValue.
         * @param selector The selector/xpath query
         * @param root The start of the query (defaults to document).
         * @param defaultValue
         * @return 
         */
        public static native function selectValue(selector : String, root : Node = undefined, defaultValue : String = undefined) : String;
        /**
         * Selects the value of a node, parsing integers and floats. Returns the defaultValue, or 0 if none is specified.
         * @param selector The selector/xpath query
         * @param root The start of the query (defaults to document).
         * @param defaultValue
         * @return 
         */
        public static native function selectNumber(selector : String, root : Node = undefined, defaultValue : Number = undefined) : Number;
        /**
         * Returns true if the passed element(s) match the passed simple selector (e.g. div.some-class or span:first-child)
         * @param el An element id, element or array of elements
         * @param selector The simple selector to test
         * @method is
         * @return 
         */
        public static native function matches(el : *, selector : String) : Boolean;
        /**
         * Filters an array of elements to only include matches of a simple selector (e.g. div.some-class or span:first-child)
         * @param el An array of elements to filter
         * @param selector The simple selector to test
         * @param nonMatches If true, it returns the elements that DON'T match
         * the selector instead of the ones that match
         * @return An Array of DOM elements which match the selector. If there are
         * no matches, and empty Array is returned.
         */
        public static native function filter(el : Array, selector : String, nonMatches : Boolean) : Array;
        /**
         * Collection of matching regular expressions and code snippets.
         */
        public static var matchers ;
        /**
         * Collection of operator comparison functions. The default operators are =, !=, ^=, $=, *=, %=, |= and ~=.
         * New operators can be added as long as the match the format <i>c</i>= where <i>c</i> is any character other than space, &gt; &lt;.
         */
        public static var operators ;
        /**
         * Collection of "pseudo class" processors. Each processor is passed the current nodeset (array)
         * and the argument (if any) supplied in the selector.
         */
        public static var pseudos ;
}}
