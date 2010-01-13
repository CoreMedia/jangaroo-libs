CKEDITOR.plugins.add('cmrichtextwriter',
{
  init : function(editor) {

    var originalAttributeFunction = CKEDITOR.htmlWriter.prototype.attribute;


    /**
     * Writes an attribute. This function should be called after opening the
     * tag with {@link #openTagClose}.
     * @param {String} attName The attribute name.
     * @param {String} attValue The attribute value.
     * @example
     * // Writes ' class="MyClass"'.
     * writer.attribute( 'class', 'MyClass' );
     */
    CKEDITOR.htmlWriter.prototype.attribute = function attribute (attName, attValue)
    {
      if (attName == 'href') {
        attName = 'xlink:href';
      }

      originalAttributeFunction.call(this, attName, attValue);
    };

  },
  requires: ['htmlwriter']
});
  