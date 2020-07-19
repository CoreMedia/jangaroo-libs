package js {

/**
 * An object of this type is returned by the files property of the HTML <input> element; this lets you access the list
 * of files selected with the <input type="file"> element. It's also used for a list of files dropped into web content
 * when using the drag and drop API; see the DataTransfer object for details on this usage.
 */
[Native("FileList")]
public class FileList {
  public native function get length(): Number;

  public native function item(index: Number): File;

  /*
  Cannot be expressed in ActionScript:
  [index: Number]: File;
   */
}
}
