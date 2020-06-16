package js{
[Native("ImageData")]
public interface ImageData {

  function get width() : uint;

  function get height() : uint;

  function get data() : Uint8ClampedArray;

}
}